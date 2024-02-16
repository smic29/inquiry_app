# Inquiry-app

A simple Ruby on Rails project for Avion School to show basic CRUD functionalities in rails.

## Initial Commit
- Added CRUD operations via Scaffold.

## TODO
  - [x] Implement Bootstrap for styling
  - [ ] Explore more on what I can do in terms of MVC
  - [x] Make pages more presentable
  - [ ] Encountered an error when creating a new Inquiry. Numbers > 100000000000000 are out-of-range. Need to fix
  - [ ] Make sure that in `_form.html.erb`, the select type option is disabled and shown by default
  - [x] Next Button added in `show.html.erb`
  - [x] Order the index by timestamp, so the most recent ones are showed first and maybe add a new column of status.
  - [ ] Toast positioning

## What I learned
- In adding in Bootstrap toasts functionality, I opted to have the script within `application.html.erb` so that it could react to the changes of `<% notice %>`. There's probably a better way of doing it, but this is fine for now. This is the script:
  ```html
  <script>
      var notice = '<%= notice %>'.trim();
      if (notice) {
        $('.toast .toast-body').text(notice);
        $('.toast').toast('show');
      }
    </script>
  ```