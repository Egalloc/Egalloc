#!/bin/bash

/opt/apache-tomcat/bin/startup.sh

cucumber features/InitialPage_InputBox.feature
cucumber features/InitialPage_BuildCollageButton.feature
cucumber features/SecondPage_BuildAnotherCollage.feature
cucumber features/SecondPage_ErrorMessage.feature
cucumber features/SecondPage_ExportCollage.feature
cucumber features/SecondPage_InputBox.feature
cucumber features/SecondPage_MainPage.feature
cucumber features/SecondPage_PreviousCollages.feature 
