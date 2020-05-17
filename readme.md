# background-generator

A quick way to create .png images with different patterns, colours and sizes that can be used as nice device wallpapers or backgrounds for your designs.

## Dependencies

- [**_pattern.css_**](https://bansal.io/pattern-css#installation) to create the background using css
- [**_phantomjs_**](https://phantomjs.org/download.html) to take a screenshot of the page, resulting to a nice png file

## Setup

1. Download **.my_custom_cmds.sh** and move it to your HOME folder or copy the **_generate_bg()_** function to your custom commands .sh file if you already have one
2. If creating a custom commands file for the first time, add the following lines to your **.zshrc** or **.bashrc** file

   ```sh
   # Load custom commands
   source ~/.my_custom_cmds.sh
   ```

3. Download **patter.min.css** to a folder of your choosing, note that that's also where the png files will be stored
4. Change _DIRECTORY_'s value in the **_generate_bg()_** function to the folder path previously chosen

   ```sh
   DIRECTORY="/PATH/TO/CHOSEN/FOLDER/"
   ```

## Usage

Run following command from terminal window:

```sh
generate-bg pattern color1 color2 height width
```

NOTE: All 5 parameters are mandatory

- `pattern` : one of the classes in the table below, replace \* with one of **sm**, **md**, **lg** or **xl** for different pattern sizes

  | Pattern name                  |
  | ----------------------------- |
  | pattern-checks-\*             |
  | pattern-grid-\*               |
  | pattern-dots-\*               |
  | pattern-cross-dots-\*         |
  | pattern-diagonal-lines- \*    |
  | pattern-horizontal-lines-\*   |
  | pattern-vertical-lines-\*     |
  | pattern-diagonal-stripes-\*   |
  | pattern-horizontal-stripes-\* |
  | pattern-vertical-stripes-\*   |
  | pattern-triangles-\*          |
  | pattern-zigzag-\*             |

- `color1, color2` : hex codes, **without the #**
- `height, width` : img height and width in px

## Example

```sh
generate_bg pattern-horizontal-stripes-md 000000 FFFFFF 1920 1080
```
