cls
@set pwd=%~dp0
@set getpage=%~dp0\..\getpage.exe
@echo @set down=..\yt-dlp --write-thumbnail  --embed-metadata  --cache-dir cache --write-link -f "bv[ext=mp4]+ba[ext=m4a]" --progress --proxy "http://127.0.0.1:15236" --no-playlist --restrict-filenames --write-subs --audio-quality 10 --merge-output-format "mp4/mkv" --sub-langs "en-US.*,zh-Hans.*" --convert-thumbnails png  --ffmpeg-location ..\ > %~dp0\Resources_ytb.cmd
@echo @echo tutorial resource downloader > %~dp0\Resources_res.cmd
@if not exist Automation mkdir Automation
@cd Automation
@if not exist "how-to-batch-convert-pxd-files-to-jpeg-in-the-finder\img" mkdir "how-to-batch-convert-pxd-files-to-jpeg-in-the-finder\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/batch-convert-pxd-to-jpeg-in-the-finder/img_thumbnail--v1.jpg
@curl -o "how-to-batch-convert-pxd-files-to-jpeg-in-the-finder\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/batch-convert-pxd-to-jpeg-in-the-finder/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/batch-convert-pxd-to-jpeg-in-the-finder/img_thumbnail--v1@2x.jpg
@curl -o "how-to-batch-convert-pxd-files-to-jpeg-in-the-finder\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/batch-convert-pxd-to-jpeg-in-the-finder/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-batch-convert-pxd-files-to-jpeg-in-the-finder/" "Automation\how-to-batch-convert-pxd-files-to-jpeg-in-the-finder" "Resources"
@if not exist "automation-magic-with-shortcuts-and-pixelmator-pro\img" mkdir "automation-magic-with-shortcuts-and-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/automation-magic-with-shortcuts-and-pixelmator-pro/img_thumbnail--v2.jpg
@curl -o "automation-magic-with-shortcuts-and-pixelmator-pro\img\img_thumbnail--v2.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/automation-magic-with-shortcuts-and-pixelmator-pro/img_thumbnail--v2.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/automation-magic-with-shortcuts-and-pixelmator-pro/img_thumbnail--v2@2x.jpg
@curl -o "automation-magic-with-shortcuts-and-pixelmator-pro\img\img_thumbnail--v2@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/automation-magic-with-shortcuts-and-pixelmator-pro/img_thumbnail--v2@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/automation-magic-with-shortcuts-and-pixelmator-pro/" "Automation\automation-magic-with-shortcuts-and-pixelmator-pro" "Resources"
@if not exist "advanced-automation-and-scripting-with-applescript\img" mkdir "advanced-automation-and-scripting-with-applescript\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/advanced-automation-and-scripting-with-applescript/img_thumb--v1.jpg
@curl -o "advanced-automation-and-scripting-with-applescript\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/advanced-automation-and-scripting-with-applescript/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/advanced-automation-and-scripting-with-applescript/img_thumb--v1@2x.jpg
@curl -o "advanced-automation-and-scripting-with-applescript\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/advanced-automation-and-scripting-with-applescript/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/advanced-automation-and-scripting-with-applescript/" "Automation\advanced-automation-and-scripting-with-applescript" "Resources"
@if not exist "batch-process-images-using-the-automator-app-and-pixelmator-pro\img" mkdir "batch-process-images-using-the-automator-app-and-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/batch-process-images-with-pixelmator-pro/thumb-batch_process_images--v1.jpg
@curl -o "batch-process-images-using-the-automator-app-and-pixelmator-pro\img\thumb-batch_process_images--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/batch-process-images-with-pixelmator-pro/thumb-batch_process_images--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/batch-process-images-with-pixelmator-pro/thumb-batch_process_images--v1@2x.jpg
@curl -o "batch-process-images-using-the-automator-app-and-pixelmator-pro\img\thumb-batch_process_images--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/batch-process-images-with-pixelmator-pro/thumb-batch_process_images--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/batch-process-images-using-the-automator-app-and-pixelmator-pro/" "Automation\batch-process-images-using-the-automator-app-and-pixelmator-pro" "Resources"
@cd %pwd%
@if not exist Basics mkdir Basics
@cd Basics
@if not exist "how-to-remove-green-screens-from-videos\img" mkdir "how-to-remove-green-screens-from-videos\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-green-screens-from-videos/" "Basics\how-to-remove-green-screens-from-videos" "Resources"
@if not exist "a-quick-guide-to-editing-videos-in-pixelmator-pro\img" mkdir "a-quick-guide-to-editing-videos-in-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1.png
@curl -o "a-quick-guide-to-editing-videos-in-pixelmator-pro\img\img_thumbnail--v1.png" "https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1@2x.png
@curl -o "a-quick-guide-to-editing-videos-in-pixelmator-pro\img\img_thumbnail--v1@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/a-quick-guide-to-editing-videos-in-pixelmator-pro/" "Basics\a-quick-guide-to-editing-videos-in-pixelmator-pro" "Resources"
@if not exist "how-to-create-a-custom-star-brush\img" mkdir "how-to-create-a-custom-star-brush\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail.png
@curl -o "how-to-create-a-custom-star-brush\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail@2x.png
@curl -o "how-to-create-a-custom-star-brush\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-custom-star-brush/" "Basics\how-to-create-a-custom-star-brush" "Resources"
@if not exist "how-to-use-design-templates\img" mkdir "how-to-use-design-templates\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1.png
@curl -o "how-to-use-design-templates\img\img_thumbnail--v1.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1@2x.png
@curl -o "how-to-use-design-templates\img\img_thumbnail--v1@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-use-design-templates/" "Basics\how-to-use-design-templates" "Resources"
@if not exist "how-to-use-mockups\img" mkdir "how-to-use-mockups\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail.png
@curl -o "how-to-use-mockups\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail@2x.png
@curl -o "how-to-use-mockups\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-use-mockups/" "Basics\how-to-use-mockups" "Resources"
@if not exist "how-to-place-objects-into-perspective\img" mkdir "how-to-place-objects-into-perspective\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1.jpg
@curl -o "how-to-place-objects-into-perspective\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1@2x.jpg
@curl -o "how-to-place-objects-into-perspective\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-place-objects-into-perspective/" "Basics\how-to-place-objects-into-perspective" "Resources"
@if not exist "9-beginner-vector-tool-tips\img" mkdir "9-beginner-vector-tool-tips\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1.jpg
@curl -o "9-beginner-vector-tool-tips\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1@2x.jpg
@curl -o "9-beginner-vector-tool-tips\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/9-beginner-vector-tool-tips/" "Basics\9-beginner-vector-tool-tips" "Resources"
@if not exist "how-to-revert-to-a-previous-version-of-your-document\img" mkdir "how-to-revert-to-a-previous-version-of-your-document\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/revert-to-a-previous-version-of-your-document/img_thumbnail--v1.jpg
@curl -o "how-to-revert-to-a-previous-version-of-your-document\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/revert-to-a-previous-version-of-your-document/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/revert-to-a-previous-version-of-your-document/img_thumbnail--v1@2x.jpg
@curl -o "how-to-revert-to-a-previous-version-of-your-document\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/revert-to-a-previous-version-of-your-document/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-revert-to-a-previous-version-of-your-document/" "Basics\how-to-revert-to-a-previous-version-of-your-document" "Resources"
@if not exist "one-click-background-removal\img" mkdir "one-click-background-removal\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/one-click-background-removal/" "Basics\one-click-background-removal" "Resources"
@if not exist "pixelmator-pro-layer-masks-and-clipping-masks-explained\img" mkdir "pixelmator-pro-layer-masks-and-clipping-masks-explained\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1.jpg
@curl -o "pixelmator-pro-layer-masks-and-clipping-masks-explained\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1@2x.jpg
@curl -o "pixelmator-pro-layer-masks-and-clipping-masks-explained\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/pixelmator-pro-layer-masks-and-clipping-masks-explained/" "Basics\pixelmator-pro-layer-masks-and-clipping-masks-explained" "Resources"
@if not exist "whats-new-in-pixelmator-pro-2-1-coral\img" mkdir "whats-new-in-pixelmator-pro-2-1-coral\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/whats-new-in-pixelmator-pro-2.1-coral/img_thumbnail--v1.jpg
@curl -o "whats-new-in-pixelmator-pro-2-1-coral\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/whats-new-in-pixelmator-pro-2.1-coral/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/whats-new-in-pixelmator-pro-2.1-coral/img_thumbnail--v1@2x.jpg
@curl -o "whats-new-in-pixelmator-pro-2-1-coral\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/whats-new-in-pixelmator-pro-2.1-coral/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/whats-new-in-pixelmator-pro-2-1-coral/" "Basics\whats-new-in-pixelmator-pro-2-1-coral" "Resources"
@if not exist "5-color-adjustments-that-will-improve-any-photo\img" mkdir "5-color-adjustments-that-will-improve-any-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1.jpg
@curl -o "5-color-adjustments-that-will-improve-any-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1@2x.jpg
@curl -o "5-color-adjustments-that-will-improve-any-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/5-color-adjustments-that-will-improve-any-photo/" "Basics\5-color-adjustments-that-will-improve-any-photo" "Resources"
@if not exist "the-ultimate-beginners-guide-to-pixelmator-pro\img" mkdir "the-ultimate-beginners-guide-to-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1.jpg
@curl -o "the-ultimate-beginners-guide-to-pixelmator-pro\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1@2x.jpg
@curl -o "the-ultimate-beginners-guide-to-pixelmator-pro\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/the-ultimate-beginners-guide-to-pixelmator-pro/" "Basics\the-ultimate-beginners-guide-to-pixelmator-pro" "Resources"
@if not exist "change-the-background-of-a-photo\img" mkdir "change-the-background-of-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1.jpg
@curl -o "change-the-background-of-a-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1@2x.jpg
@curl -o "change-the-background-of-a-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/change-the-background-of-a-photo/" "Basics\change-the-background-of-a-photo" "Resources"
@if not exist "remove-the-background-of-an-image\img" mkdir "remove-the-background-of-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1.jpg
@curl -o "remove-the-background-of-an-image\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1@2x.jpg
@curl -o "remove-the-background-of-an-image\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/remove-the-background-of-an-image/" "Basics\remove-the-background-of-an-image" "Resources"
@if not exist "a-quick-overview-of-every-retouching-tool\img" mkdir "a-quick-overview-of-every-retouching-tool\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1.jpg
@curl -o "a-quick-overview-of-every-retouching-tool\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1@2x.jpg
@curl -o "a-quick-overview-of-every-retouching-tool\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/a-quick-overview-of-every-retouching-tool/" "Basics\a-quick-overview-of-every-retouching-tool" "Resources"
@if not exist "6-tips-for-selecting-image-areas\img" mkdir "6-tips-for-selecting-image-areas\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1.jpg
@curl -o "6-tips-for-selecting-image-areas\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1@2x.jpg
@curl -o "6-tips-for-selecting-image-areas\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/6-tips-for-selecting-image-areas/" "Basics\6-tips-for-selecting-image-areas" "Resources"
@if not exist "a-quick-guide-to-the-new-pixelmator-pro-extension\img" mkdir "a-quick-guide-to-the-new-pixelmator-pro-extension\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/pixelmator-pro-extension-for-photos/extension_thumbnail--v1.jpg
@curl -o "a-quick-guide-to-the-new-pixelmator-pro-extension\img\extension_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/pixelmator-pro-extension-for-photos/extension_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/pixelmator-pro-extension-for-photos/extension_thumbnail--v1@2x.jpg
@curl -o "a-quick-guide-to-the-new-pixelmator-pro-extension\img\extension_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/pixelmator-pro-extension-for-photos/extension_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/a-quick-guide-to-the-new-pixelmator-pro-extension/" "Basics\a-quick-guide-to-the-new-pixelmator-pro-extension" "Resources"
@if not exist "quickly-remove-a-solid-color-background-from-an-image\img" mkdir "quickly-remove-a-solid-color-background-from-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1.jpg
@curl -o "quickly-remove-a-solid-color-background-from-an-image\img\thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1@2x.jpg
@curl -o "quickly-remove-a-solid-color-background-from-an-image\img\thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/quickly-remove-a-solid-color-background-from-an-image/" "Basics\quickly-remove-a-solid-color-background-from-an-image" "Resources"
@if not exist "about-layers-in-image-editing\img" mkdir "about-layers-in-image-editing\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1.jpg
@curl -o "about-layers-in-image-editing\img\thumb-about_layers--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1@2x.jpg
@curl -o "about-layers-in-image-editing\img\thumb-about_layers--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/about-layers-in-image-editing/" "Basics\about-layers-in-image-editing" "Resources"
@if not exist "how-to-add-shadows-to-objects\img" mkdir "how-to-add-shadows-to-objects\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1.jpg
@curl -o "how-to-add-shadows-to-objects\img\thumb-add_shadows--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1@2x.jpg
@curl -o "how-to-add-shadows-to-objects\img\thumb-add_shadows--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-add-shadows-to-objects/" "Basics\how-to-add-shadows-to-objects" "Resources"
@if not exist "copy-an-object-from-one-image-to-an-other\img" mkdir "copy-an-object-from-one-image-to-an-other\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1.jpg
@curl -o "copy-an-object-from-one-image-to-an-other\img\thumb-copy_an_object--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1@2x.jpg
@curl -o "copy-an-object-from-one-image-to-an-other\img\thumb-copy_an_object--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/copy-an-object-from-one-image-to-an-other/" "Basics\copy-an-object-from-one-image-to-an-other" "Resources"
@if not exist "how-to-remove-an-object-from-a-photo\img" mkdir "how-to-remove-an-object-from-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1.jpg
@curl -o "how-to-remove-an-object-from-a-photo\img\thumb_remove-object--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1@2x.jpg
@curl -o "how-to-remove-an-object-from-a-photo\img\thumb_remove-object--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-an-object-from-a-photo/" "Basics\how-to-remove-an-object-from-a-photo" "Resources"
@if not exist "how-to-add-text-to-your-image\img" mkdir "how-to-add-text-to-your-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1.jpg
@curl -o "how-to-add-text-to-your-image\img\thumb_add-text--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1@2x.jpg
@curl -o "how-to-add-text-to-your-image\img\thumb_add-text--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-add-text-to-your-image/" "Basics\how-to-add-text-to-your-image" "Resources"
@if not exist "launch-pixelmator-pro-from-photos-app\img" mkdir "launch-pixelmator-pro-from-photos-app\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/launch-from-photos/thumb_launch-from-photos--v1.jpg
@curl -o "launch-pixelmator-pro-from-photos-app\img\thumb_launch-from-photos--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/launch-from-photos/thumb_launch-from-photos--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/launch-from-photos/thumb_launch-from-photos--v1@2x.jpg
@curl -o "launch-pixelmator-pro-from-photos-app\img\thumb_launch-from-photos--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/launch-from-photos/thumb_launch-from-photos--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/launch-pixelmator-pro-from-photos-app/" "Basics\launch-pixelmator-pro-from-photos-app" "Resources"
@if not exist "how-to-create-a-new-image\img" mkdir "how-to-create-a-new-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-new/thumb_create-new--v1.jpg
@curl -o "how-to-create-a-new-image\img\thumb_create-new--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-new/thumb_create-new--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-new/thumb_create-new--v1@2x.jpg
@curl -o "how-to-create-a-new-image\img\thumb_create-new--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-new/thumb_create-new--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-new-image/" "Basics\how-to-create-a-new-image" "Resources"
@if not exist "understanding-histograms\img" mkdir "understanding-histograms\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/understanding-histograms/thumb_understanding-histograms--v1.jpg
@curl -o "understanding-histograms\img\thumb_understanding-histograms--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/understanding-histograms/thumb_understanding-histograms--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/understanding-histograms/thumb_understanding-histograms--v1@2x.jpg
@curl -o "understanding-histograms\img\thumb_understanding-histograms--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/understanding-histograms/thumb_understanding-histograms--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/understanding-histograms/" "Basics\understanding-histograms" "Resources"
@if not exist "vector-graphics-explained\img" mkdir "vector-graphics-explained\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/vector-graphics-explained/thumb-vector_graphics--v1.jpg
@curl -o "vector-graphics-explained\img\thumb-vector_graphics--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/vector-graphics-explained/thumb-vector_graphics--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/vector-graphics-explained/thumb-vector_graphics--v1@2x.jpg
@curl -o "vector-graphics-explained\img\thumb-vector_graphics--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/vector-graphics-explained/thumb-vector_graphics--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/vector-graphics-explained/" "Basics\vector-graphics-explained" "Resources"
@if not exist "pixels-explained\img" mkdir "pixels-explained\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/pixels-explained/thumb-pixels_explained--v1.jpg
@curl -o "pixels-explained\img\thumb-pixels_explained--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/pixels-explained/thumb-pixels_explained--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/pixels-explained/thumb-pixels_explained--v1@2x.jpg
@curl -o "pixels-explained\img\thumb-pixels_explained--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/pixels-explained/thumb-pixels_explained--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/pixels-explained/" "Basics\pixels-explained" "Resources"
@cd %pwd%
@if not exist Design mkdir Design
@cd Design
@if not exist "create-pixel-perfect-digital-designs\img" mkdir "create-pixel-perfect-digital-designs\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/guides/create-pixel-perfect-digital-designs/img_thumbnail.jpg
@curl -o "create-pixel-perfect-digital-designs\img\img_thumbnail.jpg" "https://pixelmator-pro.s3.amazonaws.com/tutorials/guides/create-pixel-perfect-digital-designs/img_thumbnail.jpg" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/guides/create-pixel-perfect-digital-designs/img_thumbnail@2x.jpg
@curl -o "create-pixel-perfect-digital-designs\img\img_thumbnail@2x.jpg"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/guides/create-pixel-perfect-digital-designs/img_thumbnail@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/create-pixel-perfect-digital-designs/" "Design\create-pixel-perfect-digital-designs" "Resources"
@if not exist "how-to-create-a-custom-instagram-story\img" mkdir "how-to-create-a-custom-instagram-story\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail.png
@curl -o "how-to-create-a-custom-instagram-story\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail@2x.png
@curl -o "how-to-create-a-custom-instagram-story\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-custom-instagram-story/" "Design\how-to-create-a-custom-instagram-story" "Resources"
@if not exist "how-to-create-a-risograph-print-effect\img" mkdir "how-to-create-a-risograph-print-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail.png
@curl -o "how-to-create-a-risograph-print-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail@2x.png
@curl -o "how-to-create-a-risograph-print-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-risograph-print-effect/" "Design\how-to-create-a-risograph-print-effect" "Resources"
@if not exist "how-create-a-retro-text-effect-2\img" mkdir "how-create-a-retro-text-effect-2\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail.png
@curl -o "how-create-a-retro-text-effect-2\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail@2x.png
@curl -o "how-create-a-retro-text-effect-2\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-create-a-retro-text-effect-2/" "Design\how-create-a-retro-text-effect-2" "Resources"
@if not exist "how-to-use-design-templates\img" mkdir "how-to-use-design-templates\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1.png
@curl -o "how-to-use-design-templates\img\img_thumbnail--v1.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1@2x.png
@curl -o "how-to-use-design-templates\img\img_thumbnail--v1@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-use-design-templates/" "Design\how-to-use-design-templates" "Resources"
@if not exist "how-to-use-mockups\img" mkdir "how-to-use-mockups\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail.png
@curl -o "how-to-use-mockups\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail@2x.png
@curl -o "how-to-use-mockups\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-mockups/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-use-mockups/" "Design\how-to-use-mockups" "Resources"
@if not exist "how-to-create-3d-shapes\img" mkdir "how-to-create-3d-shapes\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail.png
@curl -o "how-to-create-3d-shapes\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail@2x.png
@curl -o "how-to-create-3d-shapes\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-3d-shapes/" "Design\how-to-create-3d-shapes" "Resources"
@if not exist "how-to-create-a-neon-sign-effect\img" mkdir "how-to-create-a-neon-sign-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail.png
@curl -o "how-to-create-a-neon-sign-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail@2x.png
@curl -o "how-to-create-a-neon-sign-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/" "Design\how-to-create-a-neon-sign-effect" "Resources"
@if not exist "how-to-create-a-photo-collage\img" mkdir "how-to-create-a-photo-collage\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2.png
@curl -o "how-to-create-a-photo-collage\img\img_thumbnail--v2.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2@2x.png
@curl -o "how-to-create-a-photo-collage\img\img_thumbnail--v2@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-photo-collage/" "Design\how-to-create-a-photo-collage" "Resources"
@if not exist "how-to-create-a-seamless-pattern\img" mkdir "how-to-create-a-seamless-pattern\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail.png
@curl -o "how-to-create-a-seamless-pattern\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail@2x.png
@curl -o "how-to-create-a-seamless-pattern\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-seamless-pattern/" "Design\how-to-create-a-seamless-pattern" "Resources"
@if not exist "how-to-place-text-behind-objects-in-a-photo\img" mkdir "how-to-place-text-behind-objects-in-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail.png
@curl -o "how-to-place-text-behind-objects-in-a-photo\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail@2x.png
@curl -o "how-to-place-text-behind-objects-in-a-photo\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-place-text-behind-objects-in-a-photo/" "Design\how-to-place-text-behind-objects-in-a-photo" "Resources"
@if not exist "how-to-create-a-faded-text-effect\img" mkdir "how-to-create-a-faded-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-faded-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-faded-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-faded-text-effect/" "Design\how-to-create-a-faded-text-effect" "Resources"
@if not exist "how-to-create-a-color-splash-effect\img" mkdir "how-to-create-a-color-splash-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-color-splash-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-color-splash-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-color-splash-effect/" "Design\how-to-create-a-color-splash-effect" "Resources"
@if not exist "how-to-create-a-toy-brick-effect\img" mkdir "how-to-create-a-toy-brick-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-toy-brick-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-toy-brick-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-toy-brick-effect/" "Design\how-to-create-a-toy-brick-effect" "Resources"
@if not exist "how-to-place-objects-into-perspective\img" mkdir "how-to-place-objects-into-perspective\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1.jpg
@curl -o "how-to-place-objects-into-perspective\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1@2x.jpg
@curl -o "how-to-place-objects-into-perspective\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/place-objects-into-perspective/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-place-objects-into-perspective/" "Design\how-to-place-objects-into-perspective" "Resources"
@if not exist "how-to-create-a-stacked-text-effect\img" mkdir "how-to-create-a-stacked-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-stacked-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-stacked-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-stacked-text-effect/" "Design\how-to-create-a-stacked-text-effect" "Resources"
@if not exist "abstract-color-blurs\img" mkdir "abstract-color-blurs\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1.jpg
@curl -o "abstract-color-blurs\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1@2x.jpg
@curl -o "abstract-color-blurs\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/abstract-color-blurs/" "Design\abstract-color-blurs" "Resources"
@if not exist "one-click-background-removal\img" mkdir "one-click-background-removal\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/one-click-background-removal/" "Design\one-click-background-removal" "Resources"
@if not exist "how-to-create-translucency-vibrancy\img" mkdir "how-to-create-translucency-vibrancy\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1.jpg
@curl -o "how-to-create-translucency-vibrancy\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-translucency-vibrancy\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-translucency-vibrancy/" "Design\how-to-create-translucency-vibrancy" "Resources"
@if not exist "2-ways-to-create-a-knockout-text-effect\img" mkdir "2-ways-to-create-a-knockout-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1.jpg
@curl -o "2-ways-to-create-a-knockout-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "2-ways-to-create-a-knockout-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/2-ways-to-create-a-knockout-text-effect/" "Design\2-ways-to-create-a-knockout-text-effect" "Resources"
@if not exist "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img" mkdir "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1.jpg
@curl -o "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1@2x.jpg
@curl -o "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/recreating-the-2021-apple-september-event-visual-in-pixelmator-pro/" "Design\recreating-the-2021-apple-september-event-visual-in-pixelmator-pro" "Resources"
@if not exist "how-to-create-a-custom-youtube-thumbnail\img" mkdir "how-to-create-a-custom-youtube-thumbnail\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-youtube-thumbnail/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-custom-youtube-thumbnail\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-youtube-thumbnail/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-youtube-thumbnail/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-custom-youtube-thumbnail\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-youtube-thumbnail/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-custom-youtube-thumbnail/" "Design\how-to-create-a-custom-youtube-thumbnail" "Resources"
@if not exist "how-to-create-an-instant-photo-popout-effect\img" mkdir "how-to-create-an-instant-photo-popout-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%E2%80%91out-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-an-instant-photo-popout-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%%E2%%80%%91out-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%E2%80%91out-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-an-instant-photo-popout-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%%E2%%80%%91out-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-instant-photo-popout-effect/" "Design\how-to-create-an-instant-photo-popout-effect" "Resources"
@if not exist "how-to-create-neumorphic-designs\img" mkdir "how-to-create-neumorphic-designs\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2.jpg
@curl -o "how-to-create-neumorphic-designs\img\img_thumbnail--v2.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2@2x.jpg
@curl -o "how-to-create-neumorphic-designs\img\img_thumbnail--v2@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-neumorphic-designs/" "Design\how-to-create-neumorphic-designs" "Resources"
@if not exist "how-to-create-a-duotone-effect\img" mkdir "how-to-create-a-duotone-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-duotone-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-duotone-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-duotone-effect/" "Design\how-to-create-a-duotone-effect" "Resources"
@if not exist "how-to-create-a-pixel-stretch-effect\img" mkdir "how-to-create-a-pixel-stretch-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-pixel-stretch-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-pixel-stretch-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-pixel-stretch-effect/" "Design\how-to-create-a-pixel-stretch-effect" "Resources"
@if not exist "how-to-create-a-sliced-text-effect\img" mkdir "how-to-create-a-sliced-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-sliced-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-sliced-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-sliced-text-effect/" "Design\how-to-create-a-sliced-text-effect" "Resources"
@if not exist "how-to-create-a-paper-cut-out-effect\img" mkdir "how-to-create-a-paper-cut-out-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-paper-cut-out-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-paper-cut-out-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-paper-cut-out-effect/" "Design\how-to-create-a-paper-cut-out-effect" "Resources"
@if not exist "how-to-crop-a-photo-in-a-circle\img" mkdir "how-to-crop-a-photo-in-a-circle\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-crop-a-photo-in-a-circle/img_thumbnail--v1.jpg
@curl -o "how-to-crop-a-photo-in-a-circle\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-crop-a-photo-in-a-circle/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-crop-a-photo-in-a-circle/img_thumbnail--v1@2x.jpg
@curl -o "how-to-crop-a-photo-in-a-circle\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-crop-a-photo-in-a-circle/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-crop-a-photo-in-a-circle/" "Design\how-to-crop-a-photo-in-a-circle" "Resources"
@if not exist "create-a-realistic-t-shirt-mockup\img" mkdir "create-a-realistic-t-shirt-mockup\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1.jpg
@curl -o "create-a-realistic-t-shirt-mockup\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1@2x.jpg
@curl -o "create-a-realistic-t-shirt-mockup\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/create-a-realistic-t-shirt-mockup/" "Design\create-a-realistic-t-shirt-mockup" "Resources"
@if not exist "remove-the-background-of-an-image\img" mkdir "remove-the-background-of-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1.jpg
@curl -o "remove-the-background-of-an-image\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1@2x.jpg
@curl -o "remove-the-background-of-an-image\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/remove-the-background-of-an-image/" "Design\remove-the-background-of-an-image" "Resources"
@if not exist "how-to-create-a-retro-text-effect\img" mkdir "how-to-create-a-retro-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-retro-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-retro-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-retro-text-effect/" "Design\how-to-create-a-retro-text-effect" "Resources"
@if not exist "how-to-create-a-silhouette\img" mkdir "how-to-create-a-silhouette\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1.jpg
@curl -o "how-to-create-a-silhouette\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1@2x.jpg
@curl -o "how-to-create-a-silhouette\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-silhouette/" "Design\how-to-create-a-silhouette" "Resources"
@if not exist "how-to-create-a-realistic-motion-blur-effect\img" mkdir "how-to-create-a-realistic-motion-blur-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1.jpg
@curl -o "how-to-create-a-realistic-motion-blur-effect\img\thumb_artwork--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1@2x.jpg
@curl -o "how-to-create-a-realistic-motion-blur-effect\img\thumb_artwork--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-realistic-motion-blur-effect/" "Design\how-to-create-a-realistic-motion-blur-effect" "Resources"
@if not exist "selecting-objects-with-the-magnetic-selection-tool\img" mkdir "selecting-objects-with-the-magnetic-selection-tool\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1.jpg
@curl -o "selecting-objects-with-the-magnetic-selection-tool\img\thumb_selecting-objects-with-the-magnetic-selection-tool--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1@2x.jpg
@curl -o "selecting-objects-with-the-magnetic-selection-tool\img\thumb_selecting-objects-with-the-magnetic-selection-tool--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/selecting-objects-with-the-magnetic-selection-tool/" "Design\selecting-objects-with-the-magnetic-selection-tool" "Resources"
@if not exist "quickly-remove-a-solid-color-background-from-an-image\img" mkdir "quickly-remove-a-solid-color-background-from-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1.jpg
@curl -o "quickly-remove-a-solid-color-background-from-an-image\img\thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1@2x.jpg
@curl -o "quickly-remove-a-solid-color-background-from-an-image\img\thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/quickly-remove-a-solid-color-background-from-an-image/thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/quickly-remove-a-solid-color-background-from-an-image/" "Design\quickly-remove-a-solid-color-background-from-an-image" "Resources"
@if not exist "how-to-add-shadows-to-objects\img" mkdir "how-to-add-shadows-to-objects\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1.jpg
@curl -o "how-to-add-shadows-to-objects\img\thumb-add_shadows--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1@2x.jpg
@curl -o "how-to-add-shadows-to-objects\img\thumb-add_shadows--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-shadows/thumb-add_shadows--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-add-shadows-to-objects/" "Design\how-to-add-shadows-to-objects" "Resources"
@if not exist "copy-an-object-from-one-image-to-an-other\img" mkdir "copy-an-object-from-one-image-to-an-other\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1.jpg
@curl -o "copy-an-object-from-one-image-to-an-other\img\thumb-copy_an_object--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1@2x.jpg
@curl -o "copy-an-object-from-one-image-to-an-other\img\thumb-copy_an_object--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/copy-an-object-from-one-image-to-another/thumb-copy_an_object--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/copy-an-object-from-one-image-to-an-other/" "Design\copy-an-object-from-one-image-to-an-other" "Resources"
@if not exist "how-to-add-text-to-your-image\img" mkdir "how-to-add-text-to-your-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1.jpg
@curl -o "how-to-add-text-to-your-image\img\thumb_add-text--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1@2x.jpg
@curl -o "how-to-add-text-to-your-image\img\thumb_add-text--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-add-text-to-your-image/" "Design\how-to-add-text-to-your-image" "Resources"
@cd %pwd%
@if not exist Effects mkdir Effects
@cd Effects
@if not exist "how-to-create-a-risograph-print-effect\img" mkdir "how-to-create-a-risograph-print-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail.png
@curl -o "how-to-create-a-risograph-print-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail@2x.png
@curl -o "how-to-create-a-risograph-print-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-risograph-print-effect/" "Effects\how-to-create-a-risograph-print-effect" "Resources"
@if not exist "how-create-a-retro-text-effect-2\img" mkdir "how-create-a-retro-text-effect-2\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail.png
@curl -o "how-create-a-retro-text-effect-2\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail@2x.png
@curl -o "how-create-a-retro-text-effect-2\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-create-a-retro-text-effect-2/" "Effects\how-create-a-retro-text-effect-2" "Resources"
@if not exist "how-to-create-an-underwater-text-effect\img" mkdir "how-to-create-an-underwater-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail.png
@curl -o "how-to-create-an-underwater-text-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail@2x.png
@curl -o "how-to-create-an-underwater-text-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-underwater-text-effect/" "Effects\how-to-create-an-underwater-text-effect" "Resources"
@if not exist "how-to-create-an-ink-bleed-effect\img" mkdir "how-to-create-an-ink-bleed-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail.png
@curl -o "how-to-create-an-ink-bleed-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail@2x.png
@curl -o "how-to-create-an-ink-bleed-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-ink-bleed-effect/" "Effects\how-to-create-an-ink-bleed-effect" "Resources"
@if not exist "how-to-create-a-neon-sign-effect\img" mkdir "how-to-create-a-neon-sign-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail.png
@curl -o "how-to-create-a-neon-sign-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail@2x.png
@curl -o "how-to-create-a-neon-sign-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-neon-sign-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/" "Effects\how-to-create-a-neon-sign-effect" "Resources"
@if not exist "how-to-create-a-toy-brick-effect\img" mkdir "how-to-create-a-toy-brick-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-toy-brick-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-toy-brick-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/toy-brick-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-toy-brick-effect/" "Effects\how-to-create-a-toy-brick-effect" "Resources"
@if not exist "how-to-turn-day-into-night\img" mkdir "how-to-turn-day-into-night\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1.jpg
@curl -o "how-to-turn-day-into-night\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1@2x.jpg
@curl -o "how-to-turn-day-into-night\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-turn-day-into-night/" "Effects\how-to-turn-day-into-night" "Resources"
@if not exist "abstract-color-blurs\img" mkdir "abstract-color-blurs\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1.jpg
@curl -o "abstract-color-blurs\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1@2x.jpg
@curl -o "abstract-color-blurs\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/abstract-color-blurs/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/abstract-color-blurs/" "Effects\abstract-color-blurs" "Resources"
@if not exist "how-to-create-translucency-vibrancy\img" mkdir "how-to-create-translucency-vibrancy\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1.jpg
@curl -o "how-to-create-translucency-vibrancy\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-translucency-vibrancy\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-translucency-and-vibrancy/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-translucency-vibrancy/" "Effects\how-to-create-translucency-vibrancy" "Resources"
@if not exist "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img" mkdir "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1.jpg
@curl -o "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1@2x.jpg
@curl -o "recreating-the-2021-apple-september-event-visual-in-pixelmator-pro\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/2021-apple-september-event-visual/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/recreating-the-2021-apple-september-event-visual-in-pixelmator-pro/" "Effects\recreating-the-2021-apple-september-event-visual-in-pixelmator-pro" "Resources"
@if not exist "how-to-create-a-duotone-effect\img" mkdir "how-to-create-a-duotone-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-duotone-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-duotone-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/duotone-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-duotone-effect/" "Effects\how-to-create-a-duotone-effect" "Resources"
@if not exist "how-to-create-a-double-exposure-effect\img" mkdir "how-to-create-a-double-exposure-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-double-exposure-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-double-exposure-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-double-exposure-effect/" "Effects\how-to-create-a-double-exposure-effect" "Resources"
@if not exist "how-to-create-a-pixel-stretch-effect\img" mkdir "how-to-create-a-pixel-stretch-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-pixel-stretch-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-pixel-stretch-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/pixel-stretch-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-pixel-stretch-effect/" "Effects\how-to-create-a-pixel-stretch-effect" "Resources"
@if not exist "how-to-create-a-paper-cut-out-effect\img" mkdir "how-to-create-a-paper-cut-out-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-paper-cut-out-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-paper-cut-out-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/paper-cut-out-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-paper-cut-out-effect/" "Effects\how-to-create-a-paper-cut-out-effect" "Resources"
@if not exist "how-to-create-a-retro-text-effect\img" mkdir "how-to-create-a-retro-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-retro-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-retro-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-retro-text-effect/" "Effects\how-to-create-a-retro-text-effect" "Resources"
@if not exist "how-to-create-a-silhouette\img" mkdir "how-to-create-a-silhouette\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1.jpg
@curl -o "how-to-create-a-silhouette\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1@2x.jpg
@curl -o "how-to-create-a-silhouette\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/how-to-create-a-silhouette/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-silhouette/" "Effects\how-to-create-a-silhouette" "Resources"
@if not exist "how-to-create-a-realistic-motion-blur-effect\img" mkdir "how-to-create-a-realistic-motion-blur-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1.jpg
@curl -o "how-to-create-a-realistic-motion-blur-effect\img\thumb_artwork--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1@2x.jpg
@curl -o "how-to-create-a-realistic-motion-blur-effect\img\thumb_artwork--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-realistic-motion-blur-effect/thumb_artwork--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-realistic-motion-blur-effect/" "Effects\how-to-create-a-realistic-motion-blur-effect" "Resources"
@if not exist "add-a-light-leak-to-an-image\img" mkdir "add-a-light-leak-to-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1.jpg
@curl -o "add-a-light-leak-to-an-image\img\thumb-light_leak--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1@2x.jpg
@curl -o "add-a-light-leak-to-an-image\img\thumb-light_leak--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/add-a-light-leak-to-an-image/" "Effects\add-a-light-leak-to-an-image" "Resources"
@cd %pwd%
@if not exist Illustration mkdir Illustration
@cd Illustration
@if not exist "how-to-create-3d-shapes\img" mkdir "how-to-create-3d-shapes\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail.png
@curl -o "how-to-create-3d-shapes\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail@2x.png
@curl -o "how-to-create-3d-shapes\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-3d-shapes/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-3d-shapes/" "Illustration\how-to-create-3d-shapes" "Resources"
@if not exist "how-to-create-a-seamless-pattern\img" mkdir "how-to-create-a-seamless-pattern\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail.png
@curl -o "how-to-create-a-seamless-pattern\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail@2x.png
@curl -o "how-to-create-a-seamless-pattern\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-seamless-pattern/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-seamless-pattern/" "Illustration\how-to-create-a-seamless-pattern" "Resources"
@if not exist "turn-a-real-life-drawing-into-a-vector-illustration\img" mkdir "turn-a-real-life-drawing-into-a-vector-illustration\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/turn-a-real-life-drawing-into-a-vector-illustration/img_thumbnail--v1.jpg
@curl -o "turn-a-real-life-drawing-into-a-vector-illustration\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/turn-a-real-life-drawing-into-a-vector-illustration/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/turn-a-real-life-drawing-into-a-vector-illustration/img_thumbnail--v1@2x.jpg
@curl -o "turn-a-real-life-drawing-into-a-vector-illustration\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/turn-a-real-life-drawing-into-a-vector-illustration/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/turn-a-real-life-drawing-into-a-vector-illustration/" "Illustration\turn-a-real-life-drawing-into-a-vector-illustration" "Resources"
@if not exist "9-beginner-vector-tool-tips\img" mkdir "9-beginner-vector-tool-tips\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1.jpg
@curl -o "9-beginner-vector-tool-tips\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1@2x.jpg
@curl -o "9-beginner-vector-tool-tips\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/9-beginner-vector-tool-tips/" "Illustration\9-beginner-vector-tool-tips" "Resources"
@if not exist "how-to-apply-a-brush-stroke-to-a-path\img" mkdir "how-to-apply-a-brush-stroke-to-a-path\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1.jpg
@curl -o "how-to-apply-a-brush-stroke-to-a-path\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1@2x.jpg
@curl -o "how-to-apply-a-brush-stroke-to-a-path\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-apply-a-brush-stroke-to-a-path/" "Illustration\how-to-apply-a-brush-stroke-to-a-path" "Resources"
@if not exist "how-to-create-neumorphic-designs\img" mkdir "how-to-create-neumorphic-designs\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2.jpg
@curl -o "how-to-create-neumorphic-designs\img\img_thumbnail--v2.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2@2x.jpg
@curl -o "how-to-create-neumorphic-designs\img\img_thumbnail--v2@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/neumorphic-designs/img_thumbnail--v2@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-neumorphic-designs/" "Illustration\how-to-create-neumorphic-designs" "Resources"
@if not exist "turn-a-real-life-drawing-into-a-digital-illustration\img" mkdir "turn-a-real-life-drawing-into-a-digital-illustration\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/drawing-into-a-digital-illustration/thumb_artwork--v1.jpg
@curl -o "turn-a-real-life-drawing-into-a-digital-illustration\img\thumb_artwork--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/drawing-into-a-digital-illustration/thumb_artwork--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/drawing-into-a-digital-illustration/thumb_artwork--v1@2x.jpg
@curl -o "turn-a-real-life-drawing-into-a-digital-illustration\img\thumb_artwork--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/drawing-into-a-digital-illustration/thumb_artwork--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/turn-a-real-life-drawing-into-a-digital-illustration/" "Illustration\turn-a-real-life-drawing-into-a-digital-illustration" "Resources"
@cd %pwd%
@if not exist Layers mkdir Layers
@cd Layers
@if not exist "how-to-remove-green-screens-from-videos\img" mkdir "how-to-remove-green-screens-from-videos\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-green-screens-from-videos/" "Layers\how-to-remove-green-screens-from-videos" "Resources"
@if not exist "how-to-create-a-custom-instagram-story\img" mkdir "how-to-create-a-custom-instagram-story\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail.png
@curl -o "how-to-create-a-custom-instagram-story\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail@2x.png
@curl -o "how-to-create-a-custom-instagram-story\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-custom-instagram-story/" "Layers\how-to-create-a-custom-instagram-story" "Resources"
@if not exist "how-to-create-a-photo-collage\img" mkdir "how-to-create-a-photo-collage\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2.png
@curl -o "how-to-create-a-photo-collage\img\img_thumbnail--v2.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2@2x.png
@curl -o "how-to-create-a-photo-collage\img\img_thumbnail--v2@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-photo-collage/" "Layers\how-to-create-a-photo-collage" "Resources"
@if not exist "color-adjustments-and-effects-layers\img" mkdir "color-adjustments-and-effects-layers\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-adjustments-effects-layers/img_thumbnail--v1.jpg
@curl -o "color-adjustments-and-effects-layers\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/color-adjustments-effects-layers/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-adjustments-effects-layers/img_thumbnail--v1@2x.jpg
@curl -o "color-adjustments-and-effects-layers\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/color-adjustments-effects-layers/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/color-adjustments-and-effects-layers/" "Layers\color-adjustments-and-effects-layers" "Resources"
@if not exist "pixelmator-pro-layer-masks-and-clipping-masks-explained\img" mkdir "pixelmator-pro-layer-masks-and-clipping-masks-explained\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1.jpg
@curl -o "pixelmator-pro-layer-masks-and-clipping-masks-explained\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1@2x.jpg
@curl -o "pixelmator-pro-layer-masks-and-clipping-masks-explained\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/pixelmator-pro-layer-masks-and-clipping-masks-explained/" "Layers\pixelmator-pro-layer-masks-and-clipping-masks-explained" "Resources"
@if not exist "about-layers-in-image-editing\img" mkdir "about-layers-in-image-editing\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1.jpg
@curl -o "about-layers-in-image-editing\img\thumb-about_layers--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1@2x.jpg
@curl -o "about-layers-in-image-editing\img\thumb-about_layers--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/about-layers-in-image-editing/" "Layers\about-layers-in-image-editing" "Resources"
@cd %pwd%
@if not exist Painting mkdir Painting
@cd Painting
@if not exist "how-to-create-a-custom-star-brush\img" mkdir "how-to-create-a-custom-star-brush\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail.png
@curl -o "how-to-create-a-custom-star-brush\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail@2x.png
@curl -o "how-to-create-a-custom-star-brush\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-custom-star-brush/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-custom-star-brush/" "Painting\how-to-create-a-custom-star-brush" "Resources"
@if not exist "how-to-apply-a-brush-stroke-to-a-path\img" mkdir "how-to-apply-a-brush-stroke-to-a-path\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1.jpg
@curl -o "how-to-apply-a-brush-stroke-to-a-path\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1@2x.jpg
@curl -o "how-to-apply-a-brush-stroke-to-a-path\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/apply-a-brush-stroke-to-a-path/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-apply-a-brush-stroke-to-a-path/" "Painting\how-to-apply-a-brush-stroke-to-a-path" "Resources"
@cd %pwd%
@if not exist Photography mkdir Photography
@cd Photography
@if not exist "smooth-skin-in-photos-and-videos-in-seconds\img" mkdir "smooth-skin-in-photos-and-videos-in-seconds\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail.png
@curl -o "smooth-skin-in-photos-and-videos-in-seconds\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail@2x.png
@curl -o "smooth-skin-in-photos-and-videos-in-seconds\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/smooth-skin-in-photos-and-videos-in-seconds/" "Photography\smooth-skin-in-photos-and-videos-in-seconds" "Resources"
@if not exist "how-to-colorize-black-whites-photos\img" mkdir "how-to-colorize-black-whites-photos\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork.png
@curl -o "how-to-colorize-black-whites-photos\img\img_artwork.png" "https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork@2x.png
@curl -o "how-to-colorize-black-whites-photos\img\img_artwork@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-colorize-black-whites-photos/" "Photography\how-to-colorize-black-whites-photos" "Resources"
@if not exist "how-to-retouch-skin\img" mkdir "how-to-retouch-skin\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail.png
@curl -o "how-to-retouch-skin\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail@2x.png
@curl -o "how-to-retouch-skin\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-retouch-skin/" "Photography\how-to-retouch-skin" "Resources"
@if not exist "how-to-create-an-analog-film-filter\img" mkdir "how-to-create-an-analog-film-filter\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-an-analog-film-filter/img-thumbnail.png
@curl -o "how-to-create-an-analog-film-filter\img\img-thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-an-analog-film-filter/img-thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-an-analog-film-filter/img-thumbnail@2x.png
@curl -o "how-to-create-an-analog-film-filter\img\img-thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-an-analog-film-filter/img-thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-analog-film-filter/" "Photography\how-to-create-an-analog-film-filter" "Resources"
@if not exist "how-to-create-a-cinematic-look\img" mkdir "how-to-create-a-cinematic-look\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-cinematic-look/img_thumbnail.png
@curl -o "how-to-create-a-cinematic-look\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-cinematic-look/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-cinematic-look/img_thumbnail@2x.png
@curl -o "how-to-create-a-cinematic-look\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-cinematic-look/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-cinematic-look/" "Photography\how-to-create-a-cinematic-look" "Resources"
@if not exist "how-to-fake-the-golden-hour-look\img" mkdir "how-to-fake-the-golden-hour-look\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-fake-the-golden-hour-look/img_thumbnail.png
@curl -o "how-to-fake-the-golden-hour-look\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-fake-the-golden-hour-look/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-fake-the-golden-hour-look/img_thumbnail@2x.png
@curl -o "how-to-fake-the-golden-hour-look\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-fake-the-golden-hour-look/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-fake-the-golden-hour-look/" "Photography\how-to-fake-the-golden-hour-look" "Resources"
@if not exist "how-to-create-a-color-splash-effect\img" mkdir "how-to-create-a-color-splash-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-color-splash-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-color-splash-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-color-splash-effect/" "Photography\how-to-create-a-color-splash-effect" "Resources"
@if not exist "how-to-turn-day-into-night\img" mkdir "how-to-turn-day-into-night\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1.jpg
@curl -o "how-to-turn-day-into-night\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1@2x.jpg
@curl -o "how-to-turn-day-into-night\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/turn-day-into-night/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-turn-day-into-night/" "Photography\how-to-turn-day-into-night" "Resources"
@if not exist "the-curves-adjustment-explained\img" mkdir "the-curves-adjustment-explained\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/curves-adjustment-explained/img_thumbnail--v1.jpg
@curl -o "the-curves-adjustment-explained\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/curves-adjustment-explained/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/curves-adjustment-explained/img_thumbnail--v1@2x.jpg
@curl -o "the-curves-adjustment-explained\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/curves-adjustment-explained/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/the-curves-adjustment-explained/" "Photography\the-curves-adjustment-explained" "Resources"
@if not exist "one-click-background-removal\img" mkdir "one-click-background-removal\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/one-click-background-removal/" "Photography\one-click-background-removal" "Resources"
@if not exist "make-perfect-selections-using-the-select-and-mask-tool\img" mkdir "make-perfect-selections-using-the-select-and-mask-tool\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1.jpg
@curl -o "make-perfect-selections-using-the-select-and-mask-tool\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1@2x.jpg
@curl -o "make-perfect-selections-using-the-select-and-mask-tool\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/make-perfect-selections-using-the-select-and-mask-tool/" "Photography\make-perfect-selections-using-the-select-and-mask-tool" "Resources"
@if not exist "how-to-create-a-double-exposure-effect\img" mkdir "how-to-create-a-double-exposure-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-double-exposure-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-double-exposure-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/double-exposure-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-double-exposure-effect/" "Photography\how-to-create-a-double-exposure-effect" "Resources"
@if not exist "how-to-use-the-custom-lut-adjustment\img" mkdir "how-to-use-the-custom-lut-adjustment\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/custom-lut-adjustment/img_thumbnail--v1.jpg
@curl -o "how-to-use-the-custom-lut-adjustment\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/custom-lut-adjustment/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/custom-lut-adjustment/img_thumbnail--v1@2x.jpg
@curl -o "how-to-use-the-custom-lut-adjustment\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/custom-lut-adjustment/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-use-the-custom-lut-adjustment/" "Photography\how-to-use-the-custom-lut-adjustment" "Resources"
@if not exist "using-pixelmator-pro-to-color-grade-video-in-final-cut-pro\img" mkdir "using-pixelmator-pro-to-color-grade-video-in-final-cut-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/luts-final-cut-pro/img_thumbnail--v1.jpg
@curl -o "using-pixelmator-pro-to-color-grade-video-in-final-cut-pro\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/luts-final-cut-pro/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/luts-final-cut-pro/img_thumbnail--v1@2x.jpg
@curl -o "using-pixelmator-pro-to-color-grade-video-in-final-cut-pro\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/luts-final-cut-pro/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/using-pixelmator-pro-to-color-grade-video-in-final-cut-pro/" "Photography\using-pixelmator-pro-to-color-grade-video-in-final-cut-pro" "Resources"
@if not exist "an-in-depth-look-at-3d-luts-in-pixelmator-pro\img" mkdir "an-in-depth-look-at-3d-luts-in-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/3d-luts-in-pixelmator-pro/img_thumbnail--v1.jpg
@curl -o "an-in-depth-look-at-3d-luts-in-pixelmator-pro\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/3d-luts-in-pixelmator-pro/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/3d-luts-in-pixelmator-pro/img_thumbnail--v1@2x.jpg
@curl -o "an-in-depth-look-at-3d-luts-in-pixelmator-pro\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/3d-luts-in-pixelmator-pro/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/an-in-depth-look-at-3d-luts-in-pixelmator-pro/" "Photography\an-in-depth-look-at-3d-luts-in-pixelmator-pro" "Resources"
@if not exist "5-color-adjustments-that-will-improve-any-photo\img" mkdir "5-color-adjustments-that-will-improve-any-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1.jpg
@curl -o "5-color-adjustments-that-will-improve-any-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1@2x.jpg
@curl -o "5-color-adjustments-that-will-improve-any-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/5-color-adjustments-that-will-improve-any-photo/" "Photography\5-color-adjustments-that-will-improve-any-photo" "Resources"
@if not exist "replace-the-color-of-objects\img" mkdir "replace-the-color-of-objects\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-the-color/img_thumbnail--v1.jpg
@curl -o "replace-the-color-of-objects\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/replace-the-color/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-the-color/img_thumbnail--v1@2x.jpg
@curl -o "replace-the-color-of-objects\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/replace-the-color/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/replace-the-color-of-objects/" "Photography\replace-the-color-of-objects" "Resources"
@if not exist "change-the-background-of-a-photo\img" mkdir "change-the-background-of-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1.jpg
@curl -o "change-the-background-of-a-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1@2x.jpg
@curl -o "change-the-background-of-a-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/change-the-background-of-a-photo/" "Photography\change-the-background-of-a-photo" "Resources"
@if not exist "a-quick-overview-of-every-retouching-tool\img" mkdir "a-quick-overview-of-every-retouching-tool\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1.jpg
@curl -o "a-quick-overview-of-every-retouching-tool\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1@2x.jpg
@curl -o "a-quick-overview-of-every-retouching-tool\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/overview-of-every-retouching-tool/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/a-quick-overview-of-every-retouching-tool/" "Photography\a-quick-overview-of-every-retouching-tool" "Resources"
@if not exist "how-to-extend-the-background-in-a-photo\img" mkdir "how-to-extend-the-background-in-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-extend-the-background/img_thumbnail--v1.jpg
@curl -o "how-to-extend-the-background-in-a-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-extend-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-extend-the-background/img_thumbnail--v1@2x.jpg
@curl -o "how-to-extend-the-background-in-a-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-extend-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-extend-the-background-in-a-photo/" "Photography\how-to-extend-the-background-in-a-photo" "Resources"
@if not exist "how-to-change-the-color-of-an-object-in-a-photo\img" mkdir "how-to-change-the-color-of-an-object-in-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1.jpg
@curl -o "how-to-change-the-color-of-an-object-in-a-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1@2x.jpg
@curl -o "how-to-change-the-color-of-an-object-in-a-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-change-the-color-of-an-object-in-a-photo/" "Photography\how-to-change-the-color-of-an-object-in-a-photo" "Resources"
@if not exist "how-to-replace-the-sky-with-a-colorful-gradient\img" mkdir "how-to-replace-the-sky-with-a-colorful-gradient\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-the-sky-with-a-colorful-gradient/img_thumbnail--v1.jpg
@curl -o "how-to-replace-the-sky-with-a-colorful-gradient\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/replace-the-sky-with-a-colorful-gradient/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-the-sky-with-a-colorful-gradient/img_thumbnail--v1@2x.jpg
@curl -o "how-to-replace-the-sky-with-a-colorful-gradient\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/replace-the-sky-with-a-colorful-gradient/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-replace-the-sky-with-a-colorful-gradient/" "Photography\how-to-replace-the-sky-with-a-colorful-gradient" "Resources"
@if not exist "6-tips-for-selecting-image-areas\img" mkdir "6-tips-for-selecting-image-areas\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1.jpg
@curl -o "6-tips-for-selecting-image-areas\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1@2x.jpg
@curl -o "6-tips-for-selecting-image-areas\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/tips-for-selecting/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/6-tips-for-selecting-image-areas/" "Photography\6-tips-for-selecting-image-areas" "Resources"
@if not exist "selecting-objects-with-the-magnetic-selection-tool\img" mkdir "selecting-objects-with-the-magnetic-selection-tool\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1.jpg
@curl -o "selecting-objects-with-the-magnetic-selection-tool\img\thumb_selecting-objects-with-the-magnetic-selection-tool--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1@2x.jpg
@curl -o "selecting-objects-with-the-magnetic-selection-tool\img\thumb_selecting-objects-with-the-magnetic-selection-tool--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/selecting-objects-with-the-magnetic-selection-tool/thumb_selecting-objects-with-the-magnetic-selection-tool--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/selecting-objects-with-the-magnetic-selection-tool/" "Photography\selecting-objects-with-the-magnetic-selection-tool" "Resources"
@if not exist "how-to-replace-the-background-in-a-portrait-photo\img" mkdir "how-to-replace-the-background-in-a-portrait-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1.jpg
@curl -o "how-to-replace-the-background-in-a-portrait-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1@2x.jpg
@curl -o "how-to-replace-the-background-in-a-portrait-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-replace-the-background-in-a-portrait-photo/" "Photography\how-to-replace-the-background-in-a-portrait-photo" "Resources"
@if not exist "how-to-completely-change-the-mood-and-feel-of-a-photo\img" mkdir "how-to-completely-change-the-mood-and-feel-of-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-mood-and-feel/thumb-change_mood_and_feel--v1.jpg
@curl -o "how-to-completely-change-the-mood-and-feel-of-a-photo\img\thumb-change_mood_and_feel--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/change-mood-and-feel/thumb-change_mood_and_feel--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-mood-and-feel/thumb-change_mood_and_feel--v1@2x.jpg
@curl -o "how-to-completely-change-the-mood-and-feel-of-a-photo\img\thumb-change_mood_and_feel--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/change-mood-and-feel/thumb-change_mood_and_feel--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-completely-change-the-mood-and-feel-of-a-photo/" "Photography\how-to-completely-change-the-mood-and-feel-of-a-photo" "Resources"
@if not exist "add-a-light-leak-to-an-image\img" mkdir "add-a-light-leak-to-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1.jpg
@curl -o "add-a-light-leak-to-an-image\img\thumb-light_leak--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1@2x.jpg
@curl -o "add-a-light-leak-to-an-image\img\thumb-light_leak--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-a-light-leak-effect/thumb-light_leak--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/add-a-light-leak-to-an-image/" "Photography\add-a-light-leak-to-an-image" "Resources"
@if not exist "how-to-adjust-precise-color-ranges\img" mkdir "how-to-adjust-precise-color-ranges\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/precise-color/thumb_precise-color--v1.jpg
@curl -o "how-to-adjust-precise-color-ranges\img\thumb_precise-color--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/precise-color/thumb_precise-color--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/precise-color/thumb_precise-color--v1@2x.jpg
@curl -o "how-to-adjust-precise-color-ranges\img\thumb_precise-color--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/precise-color/thumb_precise-color--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-adjust-precise-color-ranges/" "Photography\how-to-adjust-precise-color-ranges" "Resources"
@if not exist "how-to-remove-an-object-from-a-photo\img" mkdir "how-to-remove-an-object-from-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1.jpg
@curl -o "how-to-remove-an-object-from-a-photo\img\thumb_remove-object--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1@2x.jpg
@curl -o "how-to-remove-an-object-from-a-photo\img\thumb_remove-object--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-an-object-from-a-photo/" "Photography\how-to-remove-an-object-from-a-photo" "Resources"
@cd %pwd%
@if not exist Popular mkdir Popular
@cd Popular
@if not exist "smooth-skin-in-photos-and-videos-in-seconds\img" mkdir "smooth-skin-in-photos-and-videos-in-seconds\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail.png
@curl -o "smooth-skin-in-photos-and-videos-in-seconds\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail@2x.png
@curl -o "smooth-skin-in-photos-and-videos-in-seconds\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/smooth-skin-in-photos-and-videos-in-seconds/" "Popular\smooth-skin-in-photos-and-videos-in-seconds" "Resources"
@if not exist "how-to-remove-green-screens-from-videos\img" mkdir "how-to-remove-green-screens-from-videos\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-green-screens-from-videos/" "Popular\how-to-remove-green-screens-from-videos" "Resources"
@if not exist "a-quick-guide-to-editing-videos-in-pixelmator-pro\img" mkdir "a-quick-guide-to-editing-videos-in-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1.png
@curl -o "a-quick-guide-to-editing-videos-in-pixelmator-pro\img\img_thumbnail--v1.png" "https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1@2x.png
@curl -o "a-quick-guide-to-editing-videos-in-pixelmator-pro\img\img_thumbnail--v1@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/a-quick-guide-to-editing-videos-in-pixelmator-pro/" "Popular\a-quick-guide-to-editing-videos-in-pixelmator-pro" "Resources"
@if not exist "how-to-colorize-black-whites-photos\img" mkdir "how-to-colorize-black-whites-photos\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork.png
@curl -o "how-to-colorize-black-whites-photos\img\img_artwork.png" "https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork@2x.png
@curl -o "how-to-colorize-black-whites-photos\img\img_artwork@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/colorize-black-and-whites-photos/img_artwork@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-colorize-black-whites-photos/" "Popular\how-to-colorize-black-whites-photos" "Resources"
@if not exist "how-to-use-design-templates\img" mkdir "how-to-use-design-templates\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1.png
@curl -o "how-to-use-design-templates\img\img_thumbnail--v1.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1@2x.png
@curl -o "how-to-use-design-templates\img\img_thumbnail--v1@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-use-design-templates/img_thumbnail--v1@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-use-design-templates/" "Popular\how-to-use-design-templates" "Resources"
@if not exist "how-to-retouch-skin\img" mkdir "how-to-retouch-skin\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail.png
@curl -o "how-to-retouch-skin\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail@2x.png
@curl -o "how-to-retouch-skin\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/retouch-skin/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-retouch-skin/" "Popular\how-to-retouch-skin" "Resources"
@if not exist "how-to-create-a-photo-collage\img" mkdir "how-to-create-a-photo-collage\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2.png
@curl -o "how-to-create-a-photo-collage\img\img_thumbnail--v2.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2@2x.png
@curl -o "how-to-create-a-photo-collage\img\img_thumbnail--v2@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-photo-collage/img_thumbnail--v2@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-photo-collage/" "Popular\how-to-create-a-photo-collage" "Resources"
@if not exist "how-to-place-text-behind-objects-in-a-photo\img" mkdir "how-to-place-text-behind-objects-in-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail.png
@curl -o "how-to-place-text-behind-objects-in-a-photo\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail@2x.png
@curl -o "how-to-place-text-behind-objects-in-a-photo\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-place-text-behind-objects-in-a-photo/" "Popular\how-to-place-text-behind-objects-in-a-photo" "Resources"
@if not exist "how-to-create-a-color-splash-effect\img" mkdir "how-to-create-a-color-splash-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-color-splash-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-color-splash-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/color-splash/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-color-splash-effect/" "Popular\how-to-create-a-color-splash-effect" "Resources"
@if not exist "9-beginner-vector-tool-tips\img" mkdir "9-beginner-vector-tool-tips\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1.jpg
@curl -o "9-beginner-vector-tool-tips\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1@2x.jpg
@curl -o "9-beginner-vector-tool-tips\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/9-beginner-vector-tool-tips/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/9-beginner-vector-tool-tips/" "Popular\9-beginner-vector-tool-tips" "Resources"
@if not exist "one-click-background-removal\img" mkdir "one-click-background-removal\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg
@curl -o "one-click-background-removal\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/one-click-background-removal/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/one-click-background-removal/" "Popular\one-click-background-removal" "Resources"
@if not exist "make-perfect-selections-using-the-select-and-mask-tool\img" mkdir "make-perfect-selections-using-the-select-and-mask-tool\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1.jpg
@curl -o "make-perfect-selections-using-the-select-and-mask-tool\img\img_thumb--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1@2x.jpg
@curl -o "make-perfect-selections-using-the-select-and-mask-tool\img\img_thumb--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/perfect-selections-using-the-select-and-mask-tool/img_thumb--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/make-perfect-selections-using-the-select-and-mask-tool/" "Popular\make-perfect-selections-using-the-select-and-mask-tool" "Resources"
@if not exist "pixelmator-pro-layer-masks-and-clipping-masks-explained\img" mkdir "pixelmator-pro-layer-masks-and-clipping-masks-explained\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1.jpg
@curl -o "pixelmator-pro-layer-masks-and-clipping-masks-explained\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1@2x.jpg
@curl -o "pixelmator-pro-layer-masks-and-clipping-masks-explained\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/layer-masks-and-clipping-masks/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/pixelmator-pro-layer-masks-and-clipping-masks-explained/" "Popular\pixelmator-pro-layer-masks-and-clipping-masks-explained" "Resources"
@if not exist "how-to-create-an-instant-photo-popout-effect\img" mkdir "how-to-create-an-instant-photo-popout-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%E2%80%91out-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-an-instant-photo-popout-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%%E2%%80%%91out-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%E2%80%91out-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-an-instant-photo-popout-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-an-instant-photo-pop%%E2%%80%%91out-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-instant-photo-popout-effect/" "Popular\how-to-create-an-instant-photo-popout-effect" "Resources"
@if not exist "5-color-adjustments-that-will-improve-any-photo\img" mkdir "5-color-adjustments-that-will-improve-any-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1.jpg
@curl -o "5-color-adjustments-that-will-improve-any-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1@2x.jpg
@curl -o "5-color-adjustments-that-will-improve-any-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/5-color-adjustments/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/5-color-adjustments-that-will-improve-any-photo/" "Popular\5-color-adjustments-that-will-improve-any-photo" "Resources"
@if not exist "the-ultimate-beginners-guide-to-pixelmator-pro\img" mkdir "the-ultimate-beginners-guide-to-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1.jpg
@curl -o "the-ultimate-beginners-guide-to-pixelmator-pro\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1@2x.jpg
@curl -o "the-ultimate-beginners-guide-to-pixelmator-pro\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/the-ultimate-beginners-guide-to-pixelmator-pro/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/the-ultimate-beginners-guide-to-pixelmator-pro/" "Popular\the-ultimate-beginners-guide-to-pixelmator-pro" "Resources"
@if not exist "create-a-realistic-t-shirt-mockup\img" mkdir "create-a-realistic-t-shirt-mockup\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1.jpg
@curl -o "create-a-realistic-t-shirt-mockup\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1@2x.jpg
@curl -o "create-a-realistic-t-shirt-mockup\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-realistic-t-shirt-mockup/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/create-a-realistic-t-shirt-mockup/" "Popular\create-a-realistic-t-shirt-mockup" "Resources"
@if not exist "change-the-background-of-a-photo\img" mkdir "change-the-background-of-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1.jpg
@curl -o "change-the-background-of-a-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1@2x.jpg
@curl -o "change-the-background-of-a-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/change-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/change-the-background-of-a-photo/" "Popular\change-the-background-of-a-photo" "Resources"
@if not exist "remove-the-background-of-an-image\img" mkdir "remove-the-background-of-an-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1.jpg
@curl -o "remove-the-background-of-an-image\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1@2x.jpg
@curl -o "remove-the-background-of-an-image\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/remove-the-background/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/remove-the-background-of-an-image/" "Popular\remove-the-background-of-an-image" "Resources"
@if not exist "how-to-change-the-color-of-an-object-in-a-photo\img" mkdir "how-to-change-the-color-of-an-object-in-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1.jpg
@curl -o "how-to-change-the-color-of-an-object-in-a-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1@2x.jpg
@curl -o "how-to-change-the-color-of-an-object-in-a-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/change-the-color-of-an-object/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-change-the-color-of-an-object-in-a-photo/" "Popular\how-to-change-the-color-of-an-object-in-a-photo" "Resources"
@if not exist "how-to-replace-the-background-in-a-portrait-photo\img" mkdir "how-to-replace-the-background-in-a-portrait-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1.jpg
@curl -o "how-to-replace-the-background-in-a-portrait-photo\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1@2x.jpg
@curl -o "how-to-replace-the-background-in-a-portrait-photo\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/replace-background-in-portrait-photo/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-replace-the-background-in-a-portrait-photo/" "Popular\how-to-replace-the-background-in-a-portrait-photo" "Resources"
@if not exist "about-layers-in-image-editing\img" mkdir "about-layers-in-image-editing\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1.jpg
@curl -o "about-layers-in-image-editing\img\thumb-about_layers--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1@2x.jpg
@curl -o "about-layers-in-image-editing\img\thumb-about_layers--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/about-layers-in-image-editing/thumb-about_layers--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/about-layers-in-image-editing/" "Popular\about-layers-in-image-editing" "Resources"
@if not exist "how-to-remove-an-object-from-a-photo\img" mkdir "how-to-remove-an-object-from-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1.jpg
@curl -o "how-to-remove-an-object-from-a-photo\img\thumb_remove-object--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1@2x.jpg
@curl -o "how-to-remove-an-object-from-a-photo\img\thumb_remove-object--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/remove-object/thumb_remove-object--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-an-object-from-a-photo/" "Popular\how-to-remove-an-object-from-a-photo" "Resources"
@cd %pwd%
@if not exist Text mkdir Text
@cd Text
@if not exist "how-to-create-a-risograph-print-effect\img" mkdir "how-to-create-a-risograph-print-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail.png
@curl -o "how-to-create-a-risograph-print-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail@2x.png
@curl -o "how-to-create-a-risograph-print-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-risograph-print-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-risograph-print-effect/" "Text\how-to-create-a-risograph-print-effect" "Resources"
@if not exist "how-create-a-retro-text-effect-2\img" mkdir "how-create-a-retro-text-effect-2\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail.png
@curl -o "how-create-a-retro-text-effect-2\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail@2x.png
@curl -o "how-create-a-retro-text-effect-2\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/retro-text-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-create-a-retro-text-effect-2/" "Text\how-create-a-retro-text-effect-2" "Resources"
@if not exist "how-to-create-an-underwater-text-effect\img" mkdir "how-to-create-an-underwater-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail.png
@curl -o "how-to-create-an-underwater-text-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail@2x.png
@curl -o "how-to-create-an-underwater-text-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-an-underwater-text-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-underwater-text-effect/" "Text\how-to-create-an-underwater-text-effect" "Resources"
@if not exist "how-to-create-an-ink-bleed-effect\img" mkdir "how-to-create-an-ink-bleed-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail.png
@curl -o "how-to-create-an-ink-bleed-effect\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail@2x.png
@curl -o "how-to-create-an-ink-bleed-effect\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/create-ink-bleed-effect/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-an-ink-bleed-effect/" "Text\how-to-create-an-ink-bleed-effect" "Resources"
@if not exist "how-to-place-text-behind-objects-in-a-photo\img" mkdir "how-to-place-text-behind-objects-in-a-photo\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail.png
@curl -o "how-to-place-text-behind-objects-in-a-photo\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail@2x.png
@curl -o "how-to-place-text-behind-objects-in-a-photo\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/place-text-behind-objects-in-a-photo/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-place-text-behind-objects-in-a-photo/" "Text\how-to-place-text-behind-objects-in-a-photo" "Resources"
@if not exist "how-to-create-a-faded-text-effect\img" mkdir "how-to-create-a-faded-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-faded-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-faded-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-faded-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-faded-text-effect/" "Text\how-to-create-a-faded-text-effect" "Resources"
@if not exist "how-to-create-a-stacked-text-effect\img" mkdir "how-to-create-a-stacked-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-stacked-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-stacked-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-stacked-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-stacked-text-effect/" "Text\how-to-create-a-stacked-text-effect" "Resources"
@if not exist "2-ways-to-create-a-knockout-text-effect\img" mkdir "2-ways-to-create-a-knockout-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1.jpg
@curl -o "2-ways-to-create-a-knockout-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "2-ways-to-create-a-knockout-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/2-ways-to-create-a-knockout-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/2-ways-to-create-a-knockout-text-effect/" "Text\2-ways-to-create-a-knockout-text-effect" "Resources"
@if not exist "how-to-create-a-sliced-text-effect\img" mkdir "how-to-create-a-sliced-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-sliced-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-sliced-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/create-a-sliced-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-sliced-text-effect/" "Text\how-to-create-a-sliced-text-effect" "Resources"
@if not exist "how-to-create-a-retro-text-effect\img" mkdir "how-to-create-a-retro-text-effect\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1.jpg
@curl -o "how-to-create-a-retro-text-effect\img\img_thumbnail--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1@2x.jpg
@curl -o "how-to-create-a-retro-text-effect\img\img_thumbnail--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/guides/create-a-retro-text-effect/img_thumbnail--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-retro-text-effect/" "Text\how-to-create-a-retro-text-effect" "Resources"
@if not exist "how-to-add-text-to-your-image\img" mkdir "how-to-add-text-to-your-image\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1.jpg
@curl -o "how-to-add-text-to-your-image\img\thumb_add-text--v1.jpg" "https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1.jpg" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1@2x.jpg
@curl -o "how-to-add-text-to-your-image\img\thumb_add-text--v1@2x.jpg"  "https://pro-cdn.pixelmator.com/tutorials/video/add-text/thumb_add-text--v1@2x.jpg" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-add-text-to-your-image/" "Text\how-to-add-text-to-your-image" "Resources"
@cd %pwd%
@if not exist Video mkdir Video
@cd Video
@if not exist "smooth-skin-in-photos-and-videos-in-seconds\img" mkdir "smooth-skin-in-photos-and-videos-in-seconds\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail.png
@curl -o "smooth-skin-in-photos-and-videos-in-seconds\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail@2x.png
@curl -o "smooth-skin-in-photos-and-videos-in-seconds\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/smooth-skin-in-photos-and-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/smooth-skin-in-photos-and-videos-in-seconds/" "Video\smooth-skin-in-photos-and-videos-in-seconds" "Resources"
@if not exist "how-to-remove-green-screens-from-videos\img" mkdir "how-to-remove-green-screens-from-videos\img"
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail.png" "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail.png" 2>NUL
@echo downloading https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png
@curl -o "how-to-remove-green-screens-from-videos\img\img_thumbnail@2x.png"  "https://pixelmator-pro.s3.amazonaws.com/tutorials/video/remove-green-screens-from-videos/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-remove-green-screens-from-videos/" "Video\how-to-remove-green-screens-from-videos" "Resources"
@if not exist "how-to-create-a-custom-instagram-story\img" mkdir "how-to-create-a-custom-instagram-story\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail.png
@curl -o "how-to-create-a-custom-instagram-story\img\img_thumbnail.png" "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail@2x.png
@curl -o "how-to-create-a-custom-instagram-story\img\img_thumbnail@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/how-to-create-a-custom-instagram-story/img_thumbnail@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/how-to-create-a-custom-instagram-story/" "Video\how-to-create-a-custom-instagram-story" "Resources"
@if not exist "a-quick-guide-to-editing-videos-in-pixelmator-pro\img" mkdir "a-quick-guide-to-editing-videos-in-pixelmator-pro\img"
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1.png
@curl -o "a-quick-guide-to-editing-videos-in-pixelmator-pro\img\img_thumbnail--v1.png" "https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1.png" 2>NUL
@echo downloading https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1@2x.png
@curl -o "a-quick-guide-to-editing-videos-in-pixelmator-pro\img\img_thumbnail--v1@2x.png"  "https://pro-cdn.pixelmator.com/tutorials/video/quick-guide-to-editing-evideos-in-pixelmator-pro/img_thumbnail--v1@2x.png" 2>NUL
@%getpage% "https://www.pixelmator.com/tutorials/a-quick-guide-to-editing-videos-in-pixelmator-pro/" "Video\a-quick-guide-to-editing-videos-in-pixelmator-pro" "Resources"
@cd %pwd%