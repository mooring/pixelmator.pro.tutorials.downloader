@cls
@title pixelmator pro tutorial & guide downloader
@echo Readme first
@echo ##################################################
@echo run web/Resources.cmd to download tutorials
@echo https://www.pixelmator.com/tutorials/
@echo.
@echo after finished , run web/Resources_res.cmd
@echo to download the tutorial's example demo resources
@echo to local tutorial folder
@echo.
@echo run web/Resources_ytb.cmd
@echo to download the tutorial video from youtube.com
@echo.
@echo run web/Guides.cmd 
@echo to download guides to guide from
@echo https://www.pixelmator.com/support/guide/pixelmator-pro/
@echo.
@echo if you want to setup proxy, open Resources.cmd and Guides.cmd
@echo under web folder with notepad++ or other text editor
@echo change the proxy value 
@echo.
@echo @set proxy=your_proxy_string
@echo @set proxy=http://127.0.0.1:15236

@cd %~dp0web
