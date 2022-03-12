import React from "react";
import { useParams } from "react-router-dom";

const Task_Form = ()=> {
  const params = useParams()
  return (
    <div>
      <h1>{params.id ? 'Edit' : 'New'} Task Form</h1>
      <p>ID: {params.id ? params.id : 'NO ID'}</p>
    </div>
  )
}
export default Task_Form