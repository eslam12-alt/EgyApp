function great(name) {
    return `Hello, ${name}!`;

}

model.exports = great;

if (require.main === module) {

    console.log(great("World"));
}