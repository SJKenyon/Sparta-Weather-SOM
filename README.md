# Open Weather SOM

This software was created to test outputs from the open weather API with random cities as inputs. The randomiser was created to take IDs from a YAML file and test them against the API's data.

### To clone

*You will need ruby (v 2.5.1) for these tests to work*

1. Copy the SSH key from the main file page.
2. Go to terminal and navigate to where the file is to be placed, then run this command:

  ```
  git clone [copied SSH key]
  ```

### To run the tests

1. Change directory into the new file system.
2. Run the following command to make sure all the gems are installed on your PC.

  ```
  bundle
  ```

3. Run the command:

  ```
  rspec
  ```

4. This will run all the tests. They will be green if they pass and red if they fail.
