# Send push messages

curl --header "Authorization: key=XXXXXXXXXXXX" --header "Content-Type: application/json" https://android.googleapis.com/gcm/send -d "{\"registration_ids\":[\"fs...Tw:APA...SzXha\"],\"data\": {\"message\": \"testst\",\"title\": \"test title\",\"notification\": true}}"