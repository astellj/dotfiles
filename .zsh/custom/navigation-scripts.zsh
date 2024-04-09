#!/bin/zsh

go()
{
    case "$1" in
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
         accord)
            cd ~/Developer/play/play10/$1
            ;;
         soeps|t2channelhub)
            cd ~/Developer/play/play12/$1
            ;;
         aspire|ccep|knauf|portoftyne|stada|strath|ucl|york|atm|goodwood|nhm|solent|stepan|target-verature|fxplus|sibelco)
            cd ~/Developer/play/play13/$1
            ;;
         verature_plus|dhl)
            cd ~/Developer/play/play17/$1
            ;;
         heresafe)
            cd ~/Developer/play/play18/$1
            ;;
         fusion21)
            cd ~/Developer/play/play24/$1
            ;;
         jetset)
            cd ~/Developer/spring-boot/jetset-demo
            ;;
         *)
            echo "Unknown parameter."
            ;;
    esac
}

