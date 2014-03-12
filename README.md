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
 * In the field 'Goal', enter `tomcat7:run`.
 * Press 'Run' and wait a bit until the console stops printing new output.
 * Open your browser and navigate to [localhost:8080][2]
 * If you see "Hello World!" then you successfully completed the first part of the workshop.

## Short introduction
 
### Tags:
After setting up the Spring environment and importing the workshop material, take a look at the file main.tag (src/main/webapp/WEB-INF/tags/).  This is an example of a tag, which is invoked as a JSP element that follows the same syntax as HTML tags. The tag names have an embedded colon character ‘:’. The part before the colon, the prefix, describes the type of the tag and the part after  it describes the name of the tag.

There are two types of JSP tags: predefined tags and tags loaded from an external tag library. Predefined tags have prefix jsp:.
In our file main.tag, we use a predefined tag, `<jsp:invoke fragment="body" />`. This tag is used to invoke the fragment `body`, an attribute which was defined using `<%@ attribute name="body" fragment="true" %>`.


### Controllers:
In src/main/java, you can find a package called workshop.controller. Open the java-class IndexController in this package. This class will be used as a controller for the file index.jsp (which you will extend in the next exercise). In the file IndexController.java you can see a list of imports that are needed for the Spring framework. `@Controller` tells the Spring framework that you are making a controller. `@RequestMapping` maps specific requests to the controller. In this case it tells you which URL is ‘controlled’. Here that is "/" which means the index file. The return value of the controller methods specifies which view is to be shown.


## Exercises
1. **Custom tag**
	* Extend `main.tag` by adding a new attribute `head`. Make sure you both define the attribute and invoke it on the right place. 
	* Next, add a header "The JSP workshop page" and a link to the index file between the HTML-tags `<body> </body>`
	(use `<h2>...</h2>` for the header and `<a href="URL">...</a>` for the link ). 

2. **Using the custom tag**
	* Edit `index.jsp` so that it uses our custom tag from exercise 1. To do this, first delete everything but the first line from the file. Then add the line:
	`<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>`. This gives us access to our tag-library (in this case, only containing `main.tag`).
	* Use this tag (`t:main`) to embed its content in index.jsp. Specify a body for the page using the `<jsp:attribute name="body">` tag inside that tag.
	* After you have done this correctly, you should be able to see the header "The JSP workshop page" and the link from exercise 1 in your internet browser. (If not, be sure to save all files and refresh the browser. You might also have to restart the application)

3. **Print the system property list**
	* Create a new file `print.jsp` in the view directory. Edit `main.tag` so there is also a link to the new file. Now, first copy/paste everything from `index.jsp` into `print.jsp`. Then, add another external tag-library: http://java.sun.com/jsp/jstl/core (use "uri" instead of "tagdir" to set the link). You are free to choose your own prefix, although "c" is common for this library. We are now able to use a method called `forEach` with which we are going to print all system-properties.
	* Next, create an HTML-table inside the `<jsp:attribute name="body">` block and use the `forEach`-function to create cells containing the system properties. The `forEach`-function should be called like this: `<tagprefix:forEach items="${properties}" var="varname">`. Inside this loop you can access `${varname.key}` and `${varname.value}`.
	* When done, don’t forget to create a PrintController in the `workshop.controller` package just like IndexController. Be sure to set the right `@RequestMapping` and return-value for it. Also, add the line: 
	`model.addAttribute("properties", System.getProperties()));`
	into the `public String get(...)` method. Note that we use `properties` in the `forEach` method from `print.jsp`. 
	* See if it all works by refreshing your browser.

4. **Submit and show entered text**
	* Create a new file `echo.jsp` in the view directory. As in exercise 3, edit the `main.tag` so that there is a link to the file and copy/paste everything from `index.jsp` into `echo.jsp`. Also, add the extra tag-library from exercise 3.
	* Now, let’s first create the controller this time. Figure out the name yourself. In addition to the GET request we need a POST request handler. You can just copy/paste the GET handler and change get/GET into post/POST. The method also needs an additional parameter `@RequestParam("input")` String input. This parameter represents the text input from the `echo.jsp` that we want to submit and show. Inside the method you need to add 
		`model.addAttribute(.... , input);`
	* In the jsp file, you add a HTML form with a textfield and a button. If the user clicks the button, the text from the textfield is supposed to show up below the html form. To add a textfield and a button to an html form you should use: 

    ```html
        <form method="POST" action="">
                <input type="text" name="input">
                <input type="submit" name="submit" value="Submit">
        </form>
    ```

    * After this, you should check somehow if there is some text submitted and then show that. You can do this using the extra tag-library and the EchoController we’ve just made. 


[1]: https://github.com/25A0/JSP-workshop/archive/master.zip
[2]: http://localhost:8080
