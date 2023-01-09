const express = require("express");
const mongoose = require("mongoose");

//imports from other files
const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
//init
const PORT = 3000;
const app = express();
const Db = "mongodb+srv://nehal:DIkDlhDiSCSMBLso@cluster0.evxec8w.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
//Connections
mongoose.connect(Db).then(() => {
    console.log("Connection Successful");
}).catch((e) => {
    console.log(e);
});

//connections
app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
});

//6:39