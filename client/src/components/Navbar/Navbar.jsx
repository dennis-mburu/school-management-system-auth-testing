import React from "react";
import { Link } from "react-router-dom";

function Navbar({ user, setUser }) {
  return (
    <nav className="flex items-center justify-between flex-wrap bg-our-blue p-6">
      <Link to="/" className="font-black text-2xl">EDUPO</Link>

      {user ? <button>Logout</button> : <Link to="/login">Login</Link>}
    </nav>
  );
}

export default Navbar;
