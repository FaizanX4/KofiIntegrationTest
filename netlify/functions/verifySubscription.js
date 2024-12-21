const axios = require('axios');

exports.handler = async (event) => {
    try {
        // Parse the request body
        const { userId } = JSON.parse(event.body);

        if (!userId) {
            return {
                statusCode: 400,
                body: JSON.stringify({ error: 'User ID is required' }),
            };
        }

        // Ko-fi API key from environment variables
        const KOFI_API_KEY = process.env.KOFI_API_KEY;

        // Call the Ko-fi API to get membership data
        const response = await axios.get('https://api.ko-fi.com/v1/memberships', {
            headers: { Authorization: `Bearer ${KOFI_API_KEY}` },
        });

        // Check if the user is subscribed
        const memberships = response.data.memberships || [];
        const isSubscribed = memberships.some((member) =>
            member.username === userId && member.status === 'active'
        );

        return {
            statusCode: 200,
            body: JSON.stringify({ premium: isSubscribed }),
        };
    } catch (error) {
        console.error('Error:', error.message);
        return {
            statusCode: 500,
            body: JSON.stringify({ error: 'Failed to verify subscription' }),
        };
    }
};
