import express from "express";
const app=express();
app.get("/",async(req,res)=>{
    res.json({
        message:"send endpoint",
    })
})
app.post("/",async(req,res)=>{
    res.json({
        message:"post endpoint",
    })
})