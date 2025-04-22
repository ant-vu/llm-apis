curl https://api.x.ai/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $XAI_API_KEY" \
  -d '{
    "messages": [
      {
        "role": "user",
        "content": [
          {
            "type": "image_url",
            "image_url": {
              "url": "https://science.nasa.gov/wp-content/uploads/2023/09/web-first-images-release.png",
              "detail": "high"
            }
          },
          {
            "type": "text",
            "text": "Describe this image"
          }
        ]
      }
    ],
    "model": "grok-2-vision-latest",
    "stream": false,
    "temperature": 0
  }'