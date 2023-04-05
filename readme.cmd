@cls
@title pixelmator pro tutorial & guide downloader
@echo Readme first
@echo ##################################################
@echo run web/Resources.cmd to download tutorials from
@echo https://www.pixelmator.com/tutorials/
@echo.
@echo when finished, run web/Resources_res.cmd
@echo to download the tutorial's example resources
@echo to local tutorial folder
@echo.
@echo run web/Resources_ytb.cmd
@echo to download the tutorial's video from youtube.com
@echo.
@echo run web/Guides.cmd 
@echo to download guides from
@echo https://www.pixelmator.com/support/guide/pixelmator-pro/
@echo.
@echo if you want to setup proxy, open Resources.cmd and Guides.cmd
@echo under "web" folder with notepad++ or other text editor
@echo change the proxy value, for example:
@echo.
@echo @set proxy=http://127.0.0.1:15236

@cd %~dp0web
