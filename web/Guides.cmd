cls
@rem @set proxy=http://127.0.0.1:15236
@set proxy=
@set pxystr=
@if "%proxy%" == "" @echo.>"%~dp0assets\proxy.conf"
@if not "%proxy%" == "" @echo %proxy%>"%~dp0assets\proxy.conf"
@if not "%proxy%" == "" @set pxystr=--proxy "%proxy%"
@set getpage=%~dp0..\bin\getpage.exe
@if not exist %~dp0guide mkdir %~dp0guide
@if not exist "%~dp0guide\1219" mkdir "%~dp0guide\1219\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1219/" "guide\1219" "Welcome"
@if not exist "%~dp0guide\615" mkdir "%~dp0guide\615\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/615/" "guide\615" "What's new?"
@if not exist "%~dp0guide\1229" mkdir "%~dp0guide\1229\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1229/" "guide\1229" "Intro to Pixelmator Pro"
@if not exist "%~dp0guide\1218" mkdir "%~dp0guide\1218\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1218/" "guide\1218" "Interface overview"
@if not exist "%~dp0guide\1194" mkdir "%~dp0guide\1194\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1194/" "guide\1194" "Pixelmator Pro tools"
@if not exist "%~dp0guide\1279" mkdir "%~dp0guide\1279\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1279/" "guide\1279" "Zoom in and out of an image"
@if not exist "%~dp0guide\1280" mkdir "%~dp0guide\1280\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1280/" "guide\1280" "Use the Zoom tool"
@if not exist "%~dp0guide\1281" mkdir "%~dp0guide\1281\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1281/" "guide\1281" "Scroll and pan an image"
@if not exist "%~dp0guide\1282" mkdir "%~dp0guide\1282\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1282/" "guide\1282" "Rotate the image canvas"
@if not exist "%~dp0guide\623" mkdir "%~dp0guide\623\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/623/" "guide\623" "Undo or redo changes"
@if not exist "%~dp0guide\1408" mkdir "%~dp0guide\1408\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1408/" "guide\1408" "Choose and manage colors in Pixelmator Pro"
@if not exist "%~dp0guide\1411" mkdir "%~dp0guide\1411\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1411/" "guide\1411" "Use the Color Picker tool"
@if not exist "%~dp0guide\1409" mkdir "%~dp0guide\1409\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1409/" "guide\1409" "Use the Colors window"
@if not exist "%~dp0guide\1177" mkdir "%~dp0guide\1177\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1177/" "guide\1177" "Use the Pixelmator Pro Photos extension"
@if not exist "%~dp0guide\1127" mkdir "%~dp0guide\1127\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1127/" "guide\1127" "Print a Pixelmator Pro document"
@if not exist "%~dp0guide\1392" mkdir "%~dp0guide\1392\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1392/" "guide\1392" "Text field math"
@if not exist "%~dp0guide\1057" mkdir "%~dp0guide\1057\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1057/" "guide\1057" "About Pixelmator Pro settings"
@if not exist "%~dp0guide\1195" mkdir "%~dp0guide\1195\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1195/" "guide\1195" "Set general settings"
@if not exist "%~dp0guide\1414" mkdir "%~dp0guide\1414\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1414/" "guide\1414" "Set editing settings"
@if not exist "%~dp0guide\1196" mkdir "%~dp0guide\1196\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1196/" "guide\1196" "Set ruler, grid, and guide settings"
@if not exist "%~dp0guide\1311" mkdir "%~dp0guide\1311\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1311/" "guide\1311" "Set workspace settings"
@if not exist "%~dp0guide\1198" mkdir "%~dp0guide\1198\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1198/" "guide\1198" "Set Apple Pencil settings"
@if not exist "%~dp0guide\1310" mkdir "%~dp0guide\1310\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1310/" "guide\1310" "Change the Pixelmator Pro layout"
@if not exist "%~dp0guide\1312" mkdir "%~dp0guide\1312\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1312/" "guide\1312" "Customize the Tools sidebar"
@if not exist "%~dp0guide\1381" mkdir "%~dp0guide\1381\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1381/" "guide\1381" "Customize the Pixelmator Pro toolbar"
@if not exist "%~dp0guide\1242" mkdir "%~dp0guide\1242\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1242/" "guide\1242" "Use the Touch Bar with Pixelmator Pro"
@if not exist "%~dp0guide\1270" mkdir "%~dp0guide\1270\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1270/" "guide\1270" "Automate tasks in Pixelmator Pro"
@if not exist "%~dp0guide\1415" mkdir "%~dp0guide\1415\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1415/" "guide\1415" "Working with templates"
@if not exist "%~dp0guide\1421" mkdir "%~dp0guide\1421\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1421/" "guide\1421" "Working with mockups"
@if not exist "%~dp0guide\633" mkdir "%~dp0guide\633\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/633/" "guide\633" "Create a new image"
@if not exist "%~dp0guide\634" mkdir "%~dp0guide\634\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/634/" "guide\634" "Open an image"
@if not exist "%~dp0guide\650" mkdir "%~dp0guide\650\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/650/" "guide\650" "Close an image"
@if not exist "%~dp0guide\637" mkdir "%~dp0guide\637\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/637/" "guide\637" "Save and name an image"
@if not exist "%~dp0guide\635" mkdir "%~dp0guide\635\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/635/" "guide\635" "Edit from Photos"
@if not exist "%~dp0guide\636" mkdir "%~dp0guide\636\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/636/" "guide\636" "Import an image"
@if not exist "%~dp0guide\639" mkdir "%~dp0guide\639\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/639/" "guide\639" "About the Pixelmator Pro file format"
@if not exist "%~dp0guide\1443" mkdir "%~dp0guide\1443\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1443/" "guide\1443" "About Pixelmator Pro sidecar files"
@if not exist "%~dp0guide\1391" mkdir "%~dp0guide\1391\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1391/" "guide\1391" "Decontaminate colors"
@if not exist "%~dp0guide\1442" mkdir "%~dp0guide\1442\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1442/" "guide\1442" "Remove color banding"
@if not exist "%~dp0guide\1188" mkdir "%~dp0guide\1188\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1188/" "guide\1188" "Automatically reduce noise"
@if not exist "%~dp0guide\1385" mkdir "%~dp0guide\1385\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1385/" "guide\1385" "Remove image background"
@if not exist "%~dp0guide\655" mkdir "%~dp0guide\655\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/655/" "guide\655" "About layers"
@if not exist "%~dp0guide\1255" mkdir "%~dp0guide\1255\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1255/" "guide\1255" "Raster and vector layers"
@if not exist "%~dp0guide\1428" mkdir "%~dp0guide\1428\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1428/" "guide\1428" "Video layers"
@if not exist "%~dp0guide\1404" mkdir "%~dp0guide\1404\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1404/" "guide\1404" "Color adjustments and effects layers"
@if not exist "%~dp0guide\659" mkdir "%~dp0guide\659\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/659/" "guide\659" "Create layers"
@if not exist "%~dp0guide\1250" mkdir "%~dp0guide\1250\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1250/" "guide\1250" "Replace image"
@if not exist "%~dp0guide\1329" mkdir "%~dp0guide\1329\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1329/" "guide\1329" "Use the Arrange tool"
@if not exist "%~dp0guide\662" mkdir "%~dp0guide\662\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/662/" "guide\662" "Select layers"
@if not exist "%~dp0guide\984" mkdir "%~dp0guide\984\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/984/" "guide\984" "Move and align layers"
@if not exist "%~dp0guide\991" mkdir "%~dp0guide\991\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/991/" "guide\991" "Resize, rotate, and flip layers"
@if not exist "%~dp0guide\1166" mkdir "%~dp0guide\1166\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1166/" "guide\1166" "Transform layers"
@if not exist "%~dp0guide\1158" mkdir "%~dp0guide\1158\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1158/" "guide\1158" "Convert layers into pixels"
@if not exist "%~dp0guide\996" mkdir "%~dp0guide\996\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/996/" "guide\996" "Use rulers"
@if not exist "%~dp0guide\1000" mkdir "%~dp0guide\1000\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1000/" "guide\1000" "Use alignment guides"
@if not exist "%~dp0guide\671" mkdir "%~dp0guide\671\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/671/" "guide\671" "Organize and manage layers"
@if not exist "%~dp0guide\679" mkdir "%~dp0guide\679\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/679/" "guide\679" "Use layer masks"
@if not exist "%~dp0guide\1156" mkdir "%~dp0guide\1156\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1156/" "guide\1156" "Use clipping masks"
@if not exist "%~dp0guide\1159" mkdir "%~dp0guide\1159\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1159/" "guide\1159" "Open and edit images with Portrait Masks"
@if not exist "%~dp0guide\902" mkdir "%~dp0guide\902\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/902/" "guide\902" "About layer styles"
@if not exist "%~dp0guide\910" mkdir "%~dp0guide\910\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/910/" "guide\910" "Working with layer styles"
@if not exist "%~dp0guide\903" mkdir "%~dp0guide\903\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/903/" "guide\903" "Adjust the opacity of a layer"
@if not exist "%~dp0guide\905" mkdir "%~dp0guide\905\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/905/" "guide\905" "Change the blend mode of a layer"
@if not exist "%~dp0guide\906" mkdir "%~dp0guide\906\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/906/" "guide\906" "Add an outline around a layer"
@if not exist "%~dp0guide\907" mkdir "%~dp0guide\907\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/907/" "guide\907" "Fill a layer with a color or gradient"
@if not exist "%~dp0guide\908" mkdir "%~dp0guide\908\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/908/" "guide\908" "Add an inner shadow to a layer"
@if not exist "%~dp0guide\909" mkdir "%~dp0guide\909\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/909/" "guide\909" "Add a drop shadow to a layer"
@if not exist "%~dp0guide\916" mkdir "%~dp0guide\916\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/916/" "guide\916" "Layer style presets"
@if not exist "%~dp0guide\688" mkdir "%~dp0guide\688\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/688/" "guide\688" "About adjusting colors"
@if not exist "%~dp0guide\1343" mkdir "%~dp0guide\1343\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1343/" "guide\1343" "Working with color adjustments"
@if not exist "%~dp0guide\689" mkdir "%~dp0guide\689\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/689/" "guide\689" "Reading histograms"
@if not exist "%~dp0guide\1138" mkdir "%~dp0guide\1138\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1138/" "guide\1138" "Automatically improve the look of an image"
@if not exist "%~dp0guide\693" mkdir "%~dp0guide\693\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/693/" "guide\693" "Working with RAW images"
@if not exist "%~dp0guide\1171" mkdir "%~dp0guide\1171\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1171/" "guide\1171" "Automatically match image colors"
@if not exist "%~dp0guide\694" mkdir "%~dp0guide\694\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/694/" "guide\694" "White balance an image"
@if not exist "%~dp0guide\700" mkdir "%~dp0guide\700\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/700/" "guide\700" "Adjust hue, saturation, and vibrance"
@if not exist "%~dp0guide\697" mkdir "%~dp0guide\697\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/697/" "guide\697" "Adjust lightness, clarity, and texture"
@if not exist "%~dp0guide\1451" mkdir "%~dp0guide\1451\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1451/" "guide\1451" "Selectively adjust clarity and texture of an image"
@if not exist "%~dp0guide\708" mkdir "%~dp0guide\708\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/708/" "guide\708" "Selectively balance the colors in an image"
@if not exist "%~dp0guide\709" mkdir "%~dp0guide\709\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/709/" "guide\709" "Adjust individual colors in an image"
@if not exist "%~dp0guide\711" mkdir "%~dp0guide\711\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/711/" "guide\711" "Adjust the levels of an image"
@if not exist "%~dp0guide\714" mkdir "%~dp0guide\714\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/714/" "guide\714" "Adjust the tonal curve of an image"
@if not exist "%~dp0guide\710" mkdir "%~dp0guide\710\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/710/" "guide\710" "Replace one color in an image with another"
@if not exist "%~dp0guide\1450" mkdir "%~dp0guide\1450\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1450/" "guide\1450" "Remove color from an image"
@if not exist "%~dp0guide\718" mkdir "%~dp0guide\718\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/718/" "guide\718" "Manually convert a color image to black and white"
@if not exist "%~dp0guide\719" mkdir "%~dp0guide\719\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/719/" "guide\719" "Convert an image to black and white with a color tint"
@if not exist "%~dp0guide\720" mkdir "%~dp0guide\720\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/720/" "guide\720" "Apply a sepia tint"
@if not exist "%~dp0guide\721" mkdir "%~dp0guide\721\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/721/" "guide\721" "Fade the shadows or highlights of an image"
@if not exist "%~dp0guide\717" mkdir "%~dp0guide\717\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/717/" "guide\717" "Mix the color channels of an image"
@if not exist "%~dp0guide\722" mkdir "%~dp0guide\722\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/722/" "guide\722" "Invert the colors of an image"
@if not exist "%~dp0guide\1193" mkdir "%~dp0guide\1193\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1193/" "guide\1193" "Apply a vignette"
@if not exist "%~dp0guide\723" mkdir "%~dp0guide\723\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/723/" "guide\723" "Sharpen an image"
@if not exist "%~dp0guide\724" mkdir "%~dp0guide\724\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/724/" "guide\724" "Add film grain to an image"
@if not exist "%~dp0guide\1364" mkdir "%~dp0guide\1364\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1364/" "guide\1364" "Apply LUTs"
@if not exist "%~dp0guide\725" mkdir "%~dp0guide\725\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/725/" "guide\725" "Color adjustment presets"
@if not exist "%~dp0guide\1024" mkdir "%~dp0guide\1024\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1024/" "guide\1024" "About color management"
@if not exist "%~dp0guide\1025" mkdir "%~dp0guide\1025\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1025/" "guide\1025" "Change the color profile of an image"
@if not exist "%~dp0guide\1028" mkdir "%~dp0guide\1028\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1028/" "guide\1028" "Change the color depth of an image"
@if not exist "%~dp0guide\1190" mkdir "%~dp0guide\1190\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1190/" "guide\1190" "See what an image looks like on another device"
@if not exist "%~dp0guide\731" mkdir "%~dp0guide\731\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/731/" "guide\731" "About retouching and reshaping images"
@if not exist "%~dp0guide\733" mkdir "%~dp0guide\733\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/733/" "guide\733" "Remove an object from an image"
@if not exist "%~dp0guide\736" mkdir "%~dp0guide\736\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/736/" "guide\736" "Copy part of an image from one area to another"
@if not exist "%~dp0guide\737" mkdir "%~dp0guide\737\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/737/" "guide\737" "Lighten a specific area of an image"
@if not exist "%~dp0guide\738" mkdir "%~dp0guide\738\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/738/" "guide\738" "Darken a specific area of an image"
@if not exist "%~dp0guide\739" mkdir "%~dp0guide\739\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/739/" "guide\739" "Make a specific area of an image more vibrant"
@if not exist "%~dp0guide\740" mkdir "%~dp0guide\740\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/740/" "guide\740" "Desaturate a specific area of an image"
@if not exist "%~dp0guide\741" mkdir "%~dp0guide\741\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/741/" "guide\741" "Sharpen a specific area of an image"
@if not exist "%~dp0guide\742" mkdir "%~dp0guide\742\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/742/" "guide\742" "Soften a specific area of an image"
@if not exist "%~dp0guide\743" mkdir "%~dp0guide\743\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/743/" "guide\743" "Smudge a specific area of an image"
@if not exist "%~dp0guide\1313" mkdir "%~dp0guide\1313\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1313/" "guide\1313" "Warp a specific area of an image"
@if not exist "%~dp0guide\1314" mkdir "%~dp0guide\1314\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1314/" "guide\1314" "Bump a specific area of an image"
@if not exist "%~dp0guide\1315" mkdir "%~dp0guide\1315\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1315/" "guide\1315" "Pinch a specific area of an image"
@if not exist "%~dp0guide\1316" mkdir "%~dp0guide\1316\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1316/" "guide\1316" "Twirl a specific area of an image"
@if not exist "%~dp0guide\805" mkdir "%~dp0guide\805\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/805/" "guide\805" "About effects"
@if not exist "%~dp0guide\861" mkdir "%~dp0guide\861\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/861/" "guide\861" "Working with effects"
@if not exist "%~dp0guide\806" mkdir "%~dp0guide\806\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/806/" "guide\806" "Apply blur effects"
@if not exist "%~dp0guide\814" mkdir "%~dp0guide\814\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/814/" "guide\814" "Apply distortion effects"
@if not exist "%~dp0guide\818" mkdir "%~dp0guide\818\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/818/" "guide\818" "Apply sharpen effects"
@if not exist "%~dp0guide\821" mkdir "%~dp0guide\821\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/821/" "guide\821" "Apply color adjustment effects"
@if not exist "%~dp0guide\828" mkdir "%~dp0guide\828\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/828/" "guide\828" "Apply tile effects"
@if not exist "%~dp0guide\834" mkdir "%~dp0guide\834\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/834/" "guide\834" "Apply stylize effects"
@if not exist "%~dp0guide\844" mkdir "%~dp0guide\844\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/844/" "guide\844" "Apply halftone effects"
@if not exist "%~dp0guide\850" mkdir "%~dp0guide\850\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/850/" "guide\850" "Apply generator effects"
@if not exist "%~dp0guide\856" mkdir "%~dp0guide\856\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/856/" "guide\856" "Apply fill effects"
@if not exist "%~dp0guide\1121" mkdir "%~dp0guide\1121\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1121/" "guide\1121" "Apply other effects"
@if not exist "%~dp0guide\868" mkdir "%~dp0guide\868\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/868/" "guide\868" "Effect presets"
@if not exist "%~dp0guide\1038" mkdir "%~dp0guide\1038\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1038/" "guide\1038" "Paint with the Paint tool"
@if not exist "%~dp0guide\1373" mkdir "%~dp0guide\1373\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1373/" "guide\1373" "Stroke with a brush"
@if not exist "%~dp0guide\1372" mkdir "%~dp0guide\1372\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1372/" "guide\1372" "Quickly fill an image with color"
@if not exist "%~dp0guide\1039" mkdir "%~dp0guide\1039\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1039/" "guide\1039" "Fill specific areas of an image with color"
@if not exist "%~dp0guide\1040" mkdir "%~dp0guide\1040\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1040/" "guide\1040" "Fill with the Gradient Fill tool"
@if not exist "%~dp0guide\1041" mkdir "%~dp0guide\1041\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1041/" "guide\1041" "Paint with the Pixel Paint tool"
@if not exist "%~dp0guide\1042" mkdir "%~dp0guide\1042\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1042/" "guide\1042" "Erase using the Erase tool"
@if not exist "%~dp0guide\1043" mkdir "%~dp0guide\1043\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1043/" "guide\1043" "Erase using the Smart Erase tool"
@if not exist "%~dp0guide\781" mkdir "%~dp0guide\781\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/781/" "guide\781" "Edit a brush"
@if not exist "%~dp0guide\782" mkdir "%~dp0guide\782\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/782/" "guide\782" "Create a brush"
@if not exist "%~dp0guide\763" mkdir "%~dp0guide\763\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/763/" "guide\763" "Share and import brushes"
@if not exist "%~dp0guide\764" mkdir "%~dp0guide\764\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/764/" "guide\764" "About selections in image editing"
@if not exist "%~dp0guide\1317" mkdir "%~dp0guide\1317\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1317/" "guide\1317" "Quickly select an object or area in an image"
@if not exist "%~dp0guide\1318" mkdir "%~dp0guide\1318\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1318/" "guide\1318" "Snap a selection around an object or area in an image"
@if not exist "%~dp0guide\1319" mkdir "%~dp0guide\1319\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1319/" "guide\1319" "Draw a freehand selection"
@if not exist "%~dp0guide\1320" mkdir "%~dp0guide\1320\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1320/" "guide\1320" "Make a straight-edged selection"
@if not exist "%~dp0guide\1321" mkdir "%~dp0guide\1321\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1321/" "guide\1321" "Select similarly colored areas of an image"
@if not exist "%~dp0guide\1322" mkdir "%~dp0guide\1322\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1322/" "guide\1322" "Make a rectangular selection"
@if not exist "%~dp0guide\1323" mkdir "%~dp0guide\1323\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1323/" "guide\1323" "Make an elliptical selection"
@if not exist "%~dp0guide\1358" mkdir "%~dp0guide\1358\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1358/" "guide\1358" "Make a column selection"
@if not exist "%~dp0guide\1359" mkdir "%~dp0guide\1359\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1359/" "guide\1359" "Make a row selection"
@if not exist "%~dp0guide\1324" mkdir "%~dp0guide\1324\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1324/" "guide\1324" "Select a color range"
@if not exist "%~dp0guide\1326" mkdir "%~dp0guide\1326\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1326/" "guide\1326" "Select all opaque areas of a layer"
@if not exist "%~dp0guide\1327" mkdir "%~dp0guide\1327\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1327/" "guide\1327" "Select the entire image"
@if not exist "%~dp0guide\1386" mkdir "%~dp0guide\1386\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1386/" "guide\1386" "Automatically select a subject in an image"
@if not exist "%~dp0guide\771" mkdir "%~dp0guide\771\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/771/" "guide\771" "Adjust selections"
@if not exist "%~dp0guide\772" mkdir "%~dp0guide\772\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/772/" "guide\772" "Refine selections"
@if not exist "%~dp0guide\957" mkdir "%~dp0guide\957\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/957/" "guide\957" "Move, copy, and delete selected areas"
@if not exist "%~dp0guide\1258" mkdir "%~dp0guide\1258\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1258/" "guide\1258" "Convert selections into shapes"
@if not exist "%~dp0guide\773" mkdir "%~dp0guide\773\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/773/" "guide\773" "About shapes and vector graphics"
@if not exist "%~dp0guide\774" mkdir "%~dp0guide\774\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/774/" "guide\774" "Add and edit shapes"
@if not exist "%~dp0guide\775" mkdir "%~dp0guide\775\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/775/" "guide\775" "Arrange and combine shapes"
@if not exist "%~dp0guide\776" mkdir "%~dp0guide\776\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/776/" "guide\776" "Draw shapes with the Pen tool"
@if not exist "%~dp0guide\1325" mkdir "%~dp0guide\1325\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1325/" "guide\1325" "Draw shapes with the Freeform Pen tool"
@if not exist "%~dp0guide\777" mkdir "%~dp0guide\777\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/777/" "guide\777" "Edit vector paths"
@if not exist "%~dp0guide\779" mkdir "%~dp0guide\779\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/779/" "guide\779" "Save and share custom shapes"
@if not exist "%~dp0guide\1291" mkdir "%~dp0guide\1291\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1291/" "guide\1291" "Use the Type tool"
@if not exist "%~dp0guide\1287" mkdir "%~dp0guide\1287\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1287/" "guide\1287" "Add text around the outline of a shape"
@if not exist "%~dp0guide\1288" mkdir "%~dp0guide\1288\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1288/" "guide\1288" "Add curved or circular text"
@if not exist "%~dp0guide\1289" mkdir "%~dp0guide\1289\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1289/" "guide\1289" "Add text on a path"
@if not exist "%~dp0guide\1290" mkdir "%~dp0guide\1290\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1290/" "guide\1290" "Add text on a freeform path"
@if not exist "%~dp0guide\929" mkdir "%~dp0guide\929\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/929/" "guide\929" "Copy and paste text"
@if not exist "%~dp0guide\930" mkdir "%~dp0guide\930\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/930/" "guide\930" "Use dictation to enter text"
@if not exist "%~dp0guide\931" mkdir "%~dp0guide\931\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/931/" "guide\931" "Change the font or font size"
@if not exist "%~dp0guide\932" mkdir "%~dp0guide\932\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/932/" "guide\932" "Add bold, italic, underline, or strikethrough to text"
@if not exist "%~dp0guide\933" mkdir "%~dp0guide\933\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/933/" "guide\933" "Add or remove a text outline"
@if not exist "%~dp0guide\934" mkdir "%~dp0guide\934\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/934/" "guide\934" "Change the color of text"
@if not exist "%~dp0guide\935" mkdir "%~dp0guide\935\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/935/" "guide\935" "Change text capitalization"
@if not exist "%~dp0guide\936" mkdir "%~dp0guide\936\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/936/" "guide\936" "Align and space text"
@if not exist "%~dp0guide\941" mkdir "%~dp0guide\941\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/941/" "guide\941" "Format characters"
@if not exist "%~dp0guide\947" mkdir "%~dp0guide\947\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/947/" "guide\947" "Convert text into a shape or pixel layer"
@if not exist "%~dp0guide\948" mkdir "%~dp0guide\948\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/948/" "guide\948" "Text style presets"
@if not exist "%~dp0guide\1006" mkdir "%~dp0guide\1006\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1006/" "guide\1006" "Change the image size"
@if not exist "%~dp0guide\1009" mkdir "%~dp0guide\1009\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1009/" "guide\1009" "Change the canvas size"
@if not exist "%~dp0guide\1010" mkdir "%~dp0guide\1010\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1010/" "guide\1010" "Crop and straighten an image"
@if not exist "%~dp0guide\1018" mkdir "%~dp0guide\1018\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1018/" "guide\1018" "Rotate and flip an image"
@if not exist "%~dp0guide\1021" mkdir "%~dp0guide\1021\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1021/" "guide\1021" "Trim away colored or transparent borders around an image"
@if not exist "%~dp0guide\1022" mkdir "%~dp0guide\1022\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1022/" "guide\1022" "Reveal parts of an image beyond the canvas"
@if not exist "%~dp0guide\1261" mkdir "%~dp0guide\1261\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1261/" "guide\1261" "Crop presets"
@if not exist "%~dp0guide\798" mkdir "%~dp0guide\798\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/798/" "guide\798" "Export an image or video to a different file format"
@if not exist "%~dp0guide\1051" mkdir "%~dp0guide\1051\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1051/" "guide\1051" "Export an image or video for the web"
@if not exist "%~dp0guide\1066" mkdir "%~dp0guide\1066\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1066/" "guide\1066" "Slice designs into individual images"
@if not exist "%~dp0guide\1094" mkdir "%~dp0guide\1094\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1094/" "guide\1094" "Quickly export or share an optimized image"
@if not exist "%~dp0guide\1086" mkdir "%~dp0guide\1086\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1086/" "guide\1086" "Export presets"
@if not exist "%~dp0guide\1212" mkdir "%~dp0guide\1212\img"
@cd %~dp0guide
@%getpage% "https://www.pixelmator.com/support/guide/pixelmator-pro/1212/" "guide\1212" "Pixelmator Pro keyboard shortcuts"