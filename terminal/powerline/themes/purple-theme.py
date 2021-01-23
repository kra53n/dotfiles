from powerline_shell.themes.default import DefaultColor

### CONSANTS
COLOR1 = 207 # MediumOrchid1
COLOR2 = 54 # Purple4
COLOR3 = 171 # MediumOrchid1
COLOR4 = 53 # DeepPink4
COLOR5 = 170 # Orchid
COLOR6 = 90 # DarkMagenta

class Color(DefaultColor):
    """Basic theme which only uses colors in 0-15 range"""
    USERNAME_FG = COLOR6
    USERNAME_BG = COLOR5
    USERNAME_ROOT_BG = 1

    HOSTNAME_FG = 8
    HOSTNAME_BG = 7

    HOME_SPECIAL_DISPLAY = False
    PATH_BG = COLOR2  # dark grey
    PATH_FG = COLOR1  # light grey
    CWD_FG = COLOR1  # white
    SEPARATOR_FG = COLOR1

    READONLY_BG = 1
    READONLY_FG = 15

    REPO_CLEAN_BG = 2   # green
    REPO_CLEAN_FG = 0   # black
    REPO_DIRTY_BG = 1   # red
    REPO_DIRTY_FG = 15  # white

    JOBS_FG = 14
    JOBS_BG = 8

    CMD_PASSED_BG = COLOR3
    CMD_PASSED_FG = COLOR4
    CMD_FAILED_BG = COLOR3
    CMD_FAILED_FG = COLOR4

    SVN_CHANGES_BG = REPO_DIRTY_BG
    SVN_CHANGES_FG = REPO_DIRTY_FG

    VIRTUAL_ENV_BG = 2
    VIRTUAL_ENV_FG = 0

    AWS_PROFILE_FG = 14
    AWS_PROFILE_BG = 8

    TIME_FG = 8
    TIME_BG = 7
