# ----------------------------------------------------------------------
#  File selection dialog
#
#  Arguments
#     1  Dialog title
#     2  Source path to list files and directories
#     3  File mask (by default *)
#     4  "yes" to allow go back in the file system.
#
#  Returns
#     0  if a file was selected and loads the FILE_SELECTED variable 
#        with the selected file.
#     1  if the user cancels.
# ----------------------------------------------------------------------
function dr_file_select
{
    local TITLE=${1:-$MSG_INFO_TITLE}
    local LOCAL_PATH=${2:-$(pwd)}
    local FILE_MASK=${3:-"*"}
    local ALLOW_BACK=${4:-no}
    local FILES=()

    [ "$ALLOW_BACK" != "no" ] && FILES+=(".." "..")

    # First add folders
    for DIR in $(find $LOCAL_PATH -maxdepth 1 -mindepth 1 -type d -printf "%f " 2> /dev/null)
    do
        FILES+=($DIR "folder")
    done

    # Then add the files
    for FILE in $(find $LOCAL_PATH -maxdepth 1 -type f -name "$FILE_MASK" -printf "%f %s " 2> /dev/null)
    do
        FILES+=($FILE)
    done

    while true
    do
        FILE_SELECTED=$(whiptail --clear --backtitle "$BACK_TITLE" --title "$TITLE" --menu "$LOCAL_PATH" 38 80 30 ${FILES[@]} 3>&1 1>&2 2>&3)

        if [ -z "$FILE_SELECTED" ]; then
            return 1
        else
            if [ "$FILE_SELECTED" = ".." ] && [ "$ALLOW_BACK" != "no" ]; then
                return 0

            elif [ -d "$LOCAL_PATH/$FILE_SELECTED" ] ; then
                if dr_file_select "$TITLE" "$LOCAL_PATH/$FILE_SELECTED" "$FILE_MASK" "yes" ; then
                    if [ "$FILE_SELECTED" != ".." ]; then
                        return 0
                    fi
                else
                    return 1
                fi

            elif [ -f "$LOCAL_PATH/$FILE_SELECTED" ] ; then
                FILE_SELECTED="$LOCAL_PATH/$FILE_SELECTED"
                return 0
            fi
        fi
    done
}
