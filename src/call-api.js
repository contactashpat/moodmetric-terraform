import axios from "axios";
import { Auth } from "aws-amplify";

const callApi = async () => {
    const session = await Auth.currentSession();
    const token = session.getIdToken().getJwtToken();
    
    const response = await axios.get("https://your-api-id.execute-api.eu-west-2.amazonaws.com", {
        headers: {
            Authorization: `Bearer ${token}`,
        },
    });
    
    console.log(response.data);
};
