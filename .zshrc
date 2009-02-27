### vim:ft=sh:foldmethod=marker
###
### split zsh configration
###   (for interactive shells)
###
### Original from:
### Frank Terbeck <ft@bewatermyfriend.org>
### Updated by:
### Lee Hinman <lee at writequit dot org>
###
### URI: <http://ft.bewatermyfriend.org/comp/zsh.html>
###
### DESCRIPTION
#{{{
###   This file serves two purposes:
###     a) check if an ancient zsh version called us
###     b) load the appropriate _real_ startup file
###
###   Why is this needed?
###     Because pre-3 versions of zsh do not support large parts
###     of my version checking code in 'zshrc.real'.
###     Sourcing of 'zshrc.real' will break with syntax errors
###     and nothing will be set up at all.
###     I will not rewrite that system as these old versions are
###     DEPRECATED and their use is DISCOURAGED.
###
###     I guess noone really uses these versions, except for
###     the fun of checking out what these versions felt like.
###     So, a minimal setup should be okay. }}}
###

### INSTALLATION
#{{{
###   This setup is pretty easily usable.
###   The basic idea is, to keep all setup files in a seperate directory
###   and add a few symlinks in the user's home directory.
###
###   All setup files are bundled into a bzip2'ed tar archive, available at:
###   <http://ft.bewatermyfriend.org/comp/zsh/zsh-dotfiles.tar.bz2>
###
###   This archive creates a subdir called 'zsh' that contains the whole setup.
###   The default (being the setup I am using myself) is, to create a subdir
###   named 'etc' in the user's homedir and unpack the tar archive into this
###   directory. That means the zsh setup files would be in '~/etc/zsh'.
###   Many people do not like having a directory structure like '~/etc/zsh'
###   in their home directories. So, another common setup would be to put all
###   setup files into '~/.zsh'.
###
###   To get a working setup you now got two options:
###       a) automated installation
###       b) manual installation
###
### -- The "new" way: let the zshrc do the work -- {{{
###
###   You may call this files (zshrc) as if it is a zsh skript.
###   In that case, the file detects that a non-interactive shell called it
###   and starts an installation routine. You just need to make sure, that
###   $ZRC_SOURCE_DIR (in the zshrc file) is set to the path, where you copied
###   the configfile-set.
###
###     Examples:
###       % zsh ~/etc/zsh/zshrc     # prints an usage message
###       % zsh ~/etc/zsh/zshrc -   # starts the installation routine
###                                 # in normal mode
###       % zsh ~/etc/zsh/zshrc +   # starts the installation routine
###                                 # in force mode.
###
###   The 'force' method is *not* needed generally. Only use it, if the normal
###   method fails and you _know_ what the 'force' way does.
###
###   To demonstrate, how to use this feature, let's demonstrate two possible
###   installations:
###
###     a) The default way in '~/etc/zsh':
###           % cd ~
###           % [[ ! -e ~/etc ]] && mkdir etc
###           % cd etc
###           % wget http://ft.bewatermyfriend.org/comp/zsh/zsh-dotfiles.tar.bz2
###           % bunzip2 -c zsh-dotfiles.tar.bz2 | tar xvvf -
###           % zsh zsh/zshrc -
###
###         That's it. Simple enough, I'd say.
###
###     b) Installation in custom location (lets say: '~/.zsh'):
###           % cd ~
###           % wget http://ft.bewatermyfriend.org/comp/zsh/zsh-dotfiles.tar.bz2
###           % bunzip2 -c zsh-dotfiles.tar.bz2 | tar xvvf -
###           % [[ -e ~/.zsh ]] && mv .zsh .zsh.old
###           % mv zsh .zsh
###           % zsh .zsh/zshrc - ~/.zsh
###
###         Done.
###           If you prefer, you can leave the 2nd argument (~/.zsh) to the last
###           call to zsh out, if you prefer to adjust the $ZRC_SOURCE_DIR
###           setting manually in your favourite editor (if you do not trust my
###           ed-onliner). :-)
###           You will even be forced to use your editor, if your system does
###           not provide 'ed'. But normally, on a POSIX-like system, 'ed' will
###           be there and ready to take action.
###
###   Restart zsh and be happy. :-)
###   for those of you, who understand a bit of german, I blogged about this:
###   <http://www.bewatermyfriend.org/posts/2006/12-08.17-29-44-computer.html>
#}}}
### -- The "old" way: manually create the needed symlinks -- {{{
###
###   For the default installation path, these symlinks are needed:
###
###       Link      |   Target
###   ----------------------------
###     ~/.zshrc    | ~/etc/zsh/zshrc
###     ~/.zkbd     | ~/etc/zsh/kbd
###     ~/.zlogout  | ~/etc/zsh/zlogout
###
###   To install the setup files to '~/.zsh':
###   Download the tar archive unpack it into your homedir and rename
###   the resulting 'zsh' dir to '.zsh'.
###
###   Now, create the following symlinks:
###
###       Link      |   Target
###   ----------------------------
###     ~/.zshrc    | ~/.zsh/zshrc
###     ~/.zkbd     | ~/.zsh/kbd
###     ~/.zlogout  | ~/.zsh/zlogout
###
###   A last step is needed:
###   You have to tell the setup files where they are. To achieve this, there
###   is a variable defined below: $ZRC_SOURCE_DIR;
###   Set it to the appropriate directory (in this case: '~/.zsh'). }}}
#}}}
###
### CONFIGURATION
#{{{
###   Beside the $ZRC_SOURCE_DIR variable described in the 'INSTALLATION' part,
###   there is a variable that tells the zshrc to be more verbose when being
###   loaded. This variable is called $ZSHRC_VERBOSE and must be set to a
###   numeric value.
###
###   By default it is defined like this: ZSHRC_VERBOSE=${ZSHRC_VERBOSE:-0}
###   This means that, if you start zsh and $ZSHRC_VERBOSE is not set
###   (which is the default) it gets set to 0.
###   You are now able to start zsh like this:
###
###       % ZSHRC_VERBOSE=3 zsh
###
###   which starts zsh and sets ZSHRC_VERBOSE to 3. Thus the default value will
###   not be applied. To change this default value, you can change the initial
###   setting to: ZSHRC_VERBOSE=${ZSHRC_VERBOSE:-2}, which changes the default
###   value to '2'.
###
###   Most people do have things they need in their shell configuration
###   additionaly. To serve these needs, there is a file that gets sourced
###   if it exists (it is ignored, if it is absent): 'zshrc.local'
###
###   So, if you'd like to get a fortune cookie everytime you start an
###   interactive shell, do: echo "fortune" >> ~/.zsh/zshrc.local
###   (given you set $ZRC_SOURCE_DIR to '~/.zsh' below.)
###
###   Zsh is able to pre-parse config files, so that when you source a file
###   no parsing has to be done. This speeds up loading large config files
###   on slow machines.
###
###   This config file set supports this compilation.
###   To enable this feature set ZSHRC_COMPILE accordingly.
###   Note, that 'zshrc.pre3' will never be compiled. That is not a bug.
###   pre3 versions of zsh do not support this.
###   Note, that 'compctl' and 'compsys' are only compiled if they will be
###   sourced afterwards. }}}
###
### CONTACT
#{{{
###   If you do use this configuration and something breaks on your system, feel
###   free to tell me about it. Personally I use these files on Linux as well
###   as on OpenBSD systems. I think it should not break on any UNIX system, so
###   please tell me, if you got problems. I will try to improve the parts
###   that break. Note that I do not care about Cygwin, so don't expect to
###   get any changes for that, but the simplest.
###   Everyone else on UNIX(-like) systems, report problems.
###
###   Ways to get in touch with me:
###     + Email: Frank Terbeck <ft@bewatermyfriend.org>
###     + IRC: 'ft' on freenode; channel: #zsh
###     + Jabber: efftee@jabber.ccc.de
###
###   Generally,  Email is the safest way to reach me. If you try to contact me
###   via jabber, make sure to tell me, that you'd like to discuss the zshrc.
###   If you like IRC, consider joining #zsh in irc.freenode.org and help
###   users new to zsh to resolve their problems. }}}
###

### ZSHRC_VERBOSE:
###    0:   no verbosity (only errors)
###   >0:   print files that are loaded by zrcsource
###         warns when a file needs to be (re)compiled
###   >1:   print functions zrcautoload cannot find
###   >2:   print functions zrcautoload loads
###         makes zrcneedcomp verbose
###   >3:   make version checking verbose
ZSHRC_VERBOSE=${ZSHRC_VERBOSE:-0}

### ZSHRC_COMPILE:
###    0:   don't try to compile parts of the config
###   >0:   _do_ use zcompile
ZSHRC_COMPILE=1

### I am storing the files '~/.zshrc' sources in ~/etc/zsh.
### If you moved these to another dir, set this to that dir.
ZRC_SOURCE_DIR="/home/hinmanm/.zsh"

############ DO NOT CHANGE ANYTHING BELOW ############
### new installation procedure {{{
if [[ ! -o interactive ]] ; then
    PATH="/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin"
    ZRC_SOURCE_DIR=${ZRC_SOURCE_DIR%/}
    if [[ ${1} = '+' ]] ; then force=1 ; else force=0 ; fi
    setopt extendedglob

    function zdie() { #{{{
        printf "  |\n"
        printf "  |  %s\n" ${1}
        printf "  |\n\n"
        exit 1
    } #}}}
    function zrc_installed() { #{{{
        local dot_rc dot_kbd dot_lo
        [[ ${force} -gt 0 ]] && return 0
        [[ -h ${HOME}/.zshrc    ]] && dot_rc=$(  readlink ${HOME}/.zshrc   )
        [[ -h ${HOME}/.zkbd     ]] && dot_kbd=$( readlink ${HOME}/.zkbd    )
        [[ -h ${HOME}/.zlogout  ]] && dot_lo=$(  readlink ${HOME}/.zlogout )
        if    [[ ${dot_rc}  = ${~ZRC_SOURCE_DIR}/zshrc   ]] \
           && [[ ${dot_kbd} = ${~ZRC_SOURCE_DIR}/kbd     ]] \
           && [[ ${dot_lo}  = ${~ZRC_SOURCE_DIR}/zlogout ]] ; then
            printf "  |   Installation seems to be intact already.\n"
            printf "  |   Use forced installation, if that is not the case.\n"
            printf "  |\n\n"
        exit 0
        fi
    } #}}}
    function zinst_link() { #{{{
        printf "  |  + linking %s -> %s\n" "${(r:${3}:: :::)2:t}" "${1}"
        ln -s ${1} ${2}
    } #}}}
    function zinst_linkok() { #{{{
        ### return 1, if link is okay; 0 otherwise
        local file dest
        file=${1##*/}
        ### calling readlink here untested is okay,
        ### because this function won't be called in forced mode
        dest=$(readlink ${1})
        case ${file} in
            .zshrc)   [[ ${dest} = ${~ZRC_SOURCE_DIR}/zshrc   ]] && return 1       ;;
            .zkbd)    [[ ${dest} = ${~ZRC_SOURCE_DIR}/kbd     ]] && return 1       ;;
            .zlogout) [[ ${dest} = ${~ZRC_SOURCE_DIR}/zlogout ]] && return 1       ;;
            *)        zdie "zinst_linkok() called with unknown parameter ${1}" ;;
        esac
        return 0
    } #}}}
    function zinst() { #{{{
        local file dest backup linkok
        backup=$(date +"%Y-%m-%d_%H-%M-%S")
        for file in '.zshrc' '.zkbd' '.zlogout' ; do
            case ${file} in
                .zshrc)   dest=${~ZRC_SOURCE_DIR}/zshrc   ;;
                .zkbd)    dest=${~ZRC_SOURCE_DIR}/kbd     ;;
                .zlogout) dest=${~ZRC_SOURCE_DIR}/zlogout ;;
                *) zdie "zinst_prepare broken." ;;
            esac

            linkok=0
            if [[ -e ${HOME}/${file} ]] ; then
                if [[ -h ${HOME}/${file} ]] ; then
                    zinst_linkok "${HOME}/${file}"
                    linkok=$?
                    if [[ ${linkok} -eq 0 ]] ; then
                        printf "  |  - savely removing link: %s (%s)\n" ${HOME}/${file} "$(readlink ${HOME}/${file})"
                        rm -f ${HOME}/${file}
                    fi
                else
                    if [[ -e ${file}.${backup} ]] ; then
                        zdie "${HOME}/${file}.${backup} exists! weird. GIVING UP."
                    fi
                    printf "  |  - renaming existing %s to %s\n" ${file} "${file}.${backup}"
                    mv "${HOME}/${file}" "${HOME}/${file}.${backup}"
                fi
            fi
            [[ ${linkok} -eq 0 ]] && zinst_link "${dest}" "${HOME}/${file}" 8
        done
        if [[ ${ARGV2} = ${ZRC_SOURCE_DIR} ]] ; then
            printf "  |  + editing %s with ed.\n" "${HOME}/.zshrc"
            printf "  |    - setting \${ZRC_SOURCE_DIR} to: %s\n" "${ZRC_SOURCE_DIR}"
            printf '/^[ 	]*ZRC_SOURCE_DIR=/\ns!=.*$!="%s"!\nw\n' "${ZRC_SOURCE_DIR}" | ed "${HOME}/.zshrc" >/dev/null 2>&1
        fi
    } #}}}
    function verify_zrcdir() { #{{{
        local dir
        dir=${~1}
        if [[ ! -e ${dir}/zshrc.real || ! -e ${dir}/zshrc.pre3 ]] ; then
            printf "  |   Important Files *not* found!\n"
            printf "  |   Check where you put the config file and set \$ZRC_SOURCE_DIR.\n"
            return 1
        fi
        return 0
    } #}}}

    printf "\n"
    printf "  +----------------------------------------------------------------------\n"
    printf "  |\n"
    printf "  |  Automatic installation procedure\n"
    printf "  | ------------------------------------\n"
    printf "  |\n"

    ### if '-', we _need_ readlink.
    if [[ ${force} -eq 0 ]] && [[ ! -x $(which readlink) ]] ; then
        printf "  |   readlink not found in standard-\$PATH\n"
        printf "  |   You may want to try the forced installation.\n"
        printf "  |   If you do not want that, read the old INSTALLATION instructions.\n"
        printf "  |     -- ABORT! --\n"
        printf "  |\n\n"
        exit 1
    fi
    ### NEW: support automatic setting of ${ZRC_SOURCE_DIR} via 2nd argument.
    ARGV2=${2}
    if [[ -n ${ARGV2} ]] ; then
        if [[ ! -x $(which ed) ]] ; then
            zdie "Sorry, I need 'ed' to edit myself. But I cannot find it. ABORT."
        fi
        ZRC_SOURCE_DIR=${ARGV2}
    fi
    ### if 'zshrc.real' and 'zsh.pre3' are not in ZRC_SOURCE_DIR,
    ### something is seriously broken or ZRC_SOURCE_DIR set incorrectly.
    if ! verify_zrcdir ${ZRC_SOURCE_DIR} ; then
        zdie "-- ABORT! --"
    fi
    case ${1} in
        -)
            zrc_installed
            zinst
            printf "  |\n\n"
            ;;
        +)
            printf "  |  -!- Forced Installation!\n"
            printf "  |\n"
            printf "  |      - ~/{.zshrc,.zkbd,.zlogout} will be removed!\n"
            printf "  |\n"
            printf "  |    Continuing in 5 seconds; HIT CTRL-C to abort!\n"
            printf "  |\n"
            sleep 5
            rm -Rf ${HOME}/.zshrc ${HOME}/.zkbd ${HOME}/.zlogout
            zinst
            printf "  |\n\n"
            ;;
        *)
            printf "  |   Usage:\n"
            printf "  |  --------\n"
            printf "  |\n"
            printf "  |   %% zsh /path/to/zshrc <FLAG> [ZRC_SOURCE_DIR]\n"
            printf "  |\n"
            printf "  |       edit this file and setup \$ZRC_SOURCE_DIR correctly.\n"
            printf "  |       NEW: you may define your \$ZRC_SOURCE_DIR as 2nd arg\n"
            printf "  |            to this installation procedure (needs 'ed').\n"
            printf "  |\n"
            printf "  |         use '-' as <FLAG> to create the needed symlinks.\n"
            printf "  |             '+' as <FLAG> forcibly remove files in ~/,\n"
            printf "  |                           that prevent installation\n"
            printf "  |\n"
            printf "  |  Beware! Forced installation will remove these files:\n"
            printf "  |    ~/.zshrc, ~/.zkbd and ~/.zlogout\n"
            printf "  |\n\n"
            ;;
    esac
    exit 0
fi #}}}

### check for pre-3.0 versions
zsh_is_ancient() {
    [[ -z ${ZSH_VERSION} ]] && [[ ${VERSION} = zsh* ]] && return 0
    [[ ${ZSH_VERSION} = 2.* ]] && return 0
    return 1
}

if zsh_is_ancient ; then
    #{{{
    printf "\n"
    printf "  +----------------------------------------------------------------------\n"
    printf "  |\n"
    printf "  |  +-+-+-+-+-+-+-+-+-+-+-+-+   !WARNING!   +-+-+-+-+-+-+-+-+-+-+-+-+\n"
    printf "  |\n"
    printf "  |    You are running a pre-3.0 version of zsh (%s)!\n" ${ZSH_VERSION:-${VERSION##zsh }}
    printf "  |\n"
    printf "  |    Some of these versions are still available online,\n"
    printf "  |    _BUT_ they are *deprecated* and the continued use of\n"
    printf "  |    these is *STRONGLY* *DISCOURAGED*!\n"
    printf "  |\n"
    printf "  |    This zsh setup does not actively support pre-3.0 versions.\n"
    printf "  |    I will try to load a minimal working setup, but basically,\n"
    printf "  |    you are completely on your own now, young soldier.\n"
    printf "  |\n"
    printf "  |    Please, please, PLEASE(!) consider updating to at least v3.0.2.\n"
    printf "  |    These versions are way more feature-rich and STABLE than this.\n"
    printf "  |    In fact, you are probably best off, to go for v4.2+ anyway.\n"
    printf "  |    The improvements are uncountable.\n"
    printf "  |    Please do so, for your own good.\n"
    printf "  |\n"
    printf "  |    Ye been warned!\n"
    printf "  |\n\n"
    setopt extendedglob
    if [[ -e ${~ZRC_SOURCE_DIR}/zshrc.pre3 ]] ; then
        source ${~ZRC_SOURCE_DIR}/zshrc.pre3
    else
        printf "  -!- Sorry dude. I could not find 'zshrc.pre3'.\n"
        printf "  -!- Please check your installation. Adjust \$ZRC_SOURCE_DIR as needed.\n"
    fi
    #}}}
else
    #{{{
    setopt extendedglob
    if [[ -e ${~ZRC_SOURCE_DIR}/zshrc.real ]] ; then
        ZRC_SOURCE_DIR=${~ZRC_SOURCE_DIR}
        setopt noextendedglob
        source ${ZRC_SOURCE_DIR}/zshrc.real
    else
        printf "  -!- Sorry dude. I could not find 'zshrc.real'.\n"
        printf "  -!- Please check your installation. Adjust \$ZRC_SOURCE_DIR as needed.\n"
    fi
    #}}}
fi

unfunction zsh_is_ancient
