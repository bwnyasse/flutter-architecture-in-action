
#!/bin/bash

rm -rf ios android macos web windows

flutter create . 

rm -rf ios android macos windows

flutter pub get

flutter run -d chrome --web-renderer html 

# flutter build web --web-renderer html --release // to generate a production build
