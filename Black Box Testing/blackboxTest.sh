#!/bin/bash

/opt/apache-tomcat/bin/startup.sh
cucumber --order random
cucumber features/InitialPage_InputBox.feature
cucumber --order random
cucumber features/InitialPage_BuildCollageButton.feature
cucumber --order random
cucumber features/SecondPage_BuildAnotherCollage.feature
cucumber --order random
cucumber features/SecondPage_ErrorMessage.feature
cucumber --order random
cucumber features/SecondPage_ExportCollage.feature
cucumber --order random
cucumber features/SecondPage_InputBox.feature
cucumber --order random
cucumber features/SecondPage_MainPage.feature
cucumber --order random
cucumber features/SecondPage_PreviousCollages.feature 
