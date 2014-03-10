JSP-workshop
============

## Set up the Spring environment
	
 * Visit https://sagan-production.cfapps.io/tools/sts/all
 * Download and install the Spring Tool suit for your system

## Import the workshop material
 * Use [this link][1] to download the resources of this repository or use the button 'download ZIP' on the right.
 * Start up the Spring Tool suite and Click File > Import...
 * Choose 'General' > 'Existing Project into workspace'
 * Choose 'Select archive file', click 'Browse...' and choose the zip file that you downloaded earlier.
 * You should see "JSP-workshop" in the 'Projects' panel below.
 * Click 'Finish'
 * In the package explorer, you should see a project called "JSP-workshop".
 * Right-click on the project, choose 'Run as' > 'Maven Build' (without the three dots at the end).
 * A dialog pops up that lets you specify a new run configuration. You only have to fill this in once.
 * In the field 'target', enter "tomcat7:run".
 * Press 'Run' and wait a bit. There should be 
 * Open your browser and navigate to [localhost:8080][2]
 * If you see "Hello World!" then you successfully completed the first part of the workshop.



[1]: https://github.com/25A0/JSP-workshop/archive/master.zip
[2]: http://localhost:8080
