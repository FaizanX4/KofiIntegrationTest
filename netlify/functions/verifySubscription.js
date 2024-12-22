exports.handler = async (event) => {
    try {
        const { userId } = JSON.parse(event.body);

        if (!userId) {
            return {
                statusCode: 400,
                body: JSON.stringify({ error: "User ID is required" }),
            };
        }

        // Mock response for testing
        const mockMemberships = [
            { username: "test_username", status: "active" },
            { username: "inactive_user", status: "inactive" },
        ];

        // Check if the user is in the mock data
        const isSubscribed = mockMemberships.some(
            (member) => member.username === userId && member.status === "active"
        );

        return {
            statusCode: 200,
            body: JSON.stringify({ premium: isSubscribed }),
        };
    } catch (error) {
        console.error("Error:", error.message);
        return {
            statusCode: 500,
            body: JSON.stringify({ error: "Failed to verify subscription" }),
        };
    }
};
