import React from "react";
import { useParams } from "react-router-dom";

const Task_Show = ()=> {
  const params = useParams()
  return (
    <div>
      <h1>Task Show</h1>
      <p>id {params.id}</p>
    </div>
  )
}
export default Task_Show