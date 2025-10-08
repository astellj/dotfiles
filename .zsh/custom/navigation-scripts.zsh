#!/bin/zsh

go() {
    local selected_option
    selected_option=$(echo "vault\ndotfiles\ndev\npersonal\nplay\nplay10\nplay12\nplay13\nplay17\nplay18\naccord\naccord-newskin\nsoeps\nt2channelhub\naspire2\nccepwf\nknauf\nportoftyne\nstada\nstrath\nucl\nyork\natm\ngoodwood\nnhm\nsolent\nstepan\ntarget-verature\nfxplus\nsibelco\ndemo\ndhl\nforgemasters\nportal\nfusion21\njetset\nncc\nwellcome\ncollins\nornua\nccep-gatehouse-trials\ne6\nmorrisons\nmasonite\nfelixstowe\ngcu\nwifinity\ninspinia\nsoton\nkingston" | fzf --height 50% --ansi --no-multi --preview-window right:65%)

    case "$selected_option" in
         vault)
            cd ~/Documents/Vault
            ;;
         dotfiles)
            cd ~/dotfiles
            ;;
         dev)
            cd ~/Developer
            ;;
         personal)
            cd ~/Developer/personal
            ;;
         play)
            cd ~/Developer/play
            ;;
         play10)
            cd ~/Developer/play/play10
            ;;
         play12)
            cd ~/Developer/play/play12
            ;;
         play13)
            cd ~/Developer/play/play13
            ;;
         play17)
            cd ~/Developer/play/play17
            ;;
         play18)
            cd ~/Developer/play/play18
            ;;
         play24)
            cd ~/Developer/play/play24
            ;;
         accord|accord-newskin)
            cd ~/Developer/play/play10/$selected_option
            ;;
         soeps|t2channelhub)
            cd ~/Developer/play/play12/$selected_option
            ;;
         aspire2|ccepwf|knauf|portoftyne|stada|strath|ucl|york|atm|goodwood|nhm|solent|stepan|target-verature|fxplus|sibelco|ncc|wellcome|collins|ornua|ccep-gatehouse-trials)
            cd ~/Developer/play/play13/$selected_option
            ;;
         demo|dhl|forgemasters|e6|morrisons|masonite|felixstowe|gcu|wifinity|soton|kingston)
            cd ~/Developer/play/play17/$selected_option
            ;;
         portal)
            cd ~/Developer/play/play18/$selected_option
            ;;
         fusion21)
            cd ~/Developer/play/play24/$selected_option
            ;;
         jetset)
            cd ~/Developer/spring-boot/jetset-demo
            ;;
         inspinia)
            cd ~/Developer/www/inspinia-theme/HTML5_Full_Version
            ;;
         *)
            echo "Unknown parameter."
            ;;
    esac
}

if [[ "$1" == "go" ]]; then
    go
fi
