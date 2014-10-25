#!/bin/bash
echo "# User list in XML:"
echo ""
curl -s "$1/v1.0/user" | xmllint --format -
echo ""
echo "-------------"
echo "# User list in JSON:"
echo ""
curl -s "$1/v1.0/user?type=json" | python -mjson.tool
echo ""
echo "-------------"
echo "# Post list in XML:"
echo ""
curl -s "$1/v1.0/post" | xmllint --format -
echo ""
echo ""
echo "-------------"
echo "# Creating post:"
echo ""
curl -s -X POST "$1/v1.0/post' -H "Content-Type:application/json" -d '{"user":{"name":"adam","password":"1234"},"post":{"title":"Interesting Blog Post","content":"I will finish this later"}}" | python -mjson.tool
echo "-------------"
echo "# Creating post with the same title:"
echo ""
curl -s -X POST "$1/v1.0/post' -H "Content-Type:application/json" -d '{"user":{"name":"adam","password":"1234"},"post":{"title":"Interesting Blog Post","content":"I will finish this later"}}" | python -mjson.tool
echo "-------------"
echo "# Commenting"
echo ""
curl -s -X POST "$1/v1.0/post/id/0/comment' -H "Content-Type:application/json" -d '{"user":{"name":"adam","password":"1234"},"comment":"I really outdid myself this time!?"}" | python -mjson.tool
echo "-------------"
echo "# Listing a posts comments"
echo ""
curl "$1/v1.0/post/id/0/comment" -H "Content-Type:application/json" | python -mjson.tool
