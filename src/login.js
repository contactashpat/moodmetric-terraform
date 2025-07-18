import { Auth } from "aws-amplify";
import { useState } from "react";

export default function Login() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    
    const signIn = async () => {
        try {
            const user = await Auth.signIn(email, password);
            const session = await Auth.currentSession();
            const token = session.getIdToken().getJwtToken();
            console.log("JWT:", token);
            
            // use token with API
        } catch (err) {
            console.error("Login error", err);
        }
    };
    
    return (
        <div>
            <input placeholder="email" onChange={(e) => setEmail(e.target.value)} />
            <input placeholder="password" type="password" onChange={(e) => setPassword(e.target.value)} />
            <button onClick={signIn}>Sign In</button>
        </div>
    );
}
