// In your terminal, first run:
// npm install openai

import OpenAI from "openai";

const client = new OpenAI({
    apiKey: "your_api_key",
    baseURL: "https://api.x.ai/v1",
});

const completion = await client.chat.completions.create({
    model: "grok-3-beta",
    messages: [
        {
            role: "system",
            content:
                "You are Grok, a highly intelligent, helpful AI assistant.",
        },
        {
            role: "user",
            content:
                "What is the meaning of life, the universe, and everything?",
        },
    ],
});

console.log(completion.choices[0].message.content);