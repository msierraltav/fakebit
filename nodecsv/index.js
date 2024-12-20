const fs = require('fs');
const path = require('path');
const csv = require('csv-parser');
const { MongoClient } = require('mongodb');

const csvFilePath = path.join(__dirname, 'data.csv');
const mongoUrl = 'mongodb://admin:password123@localhost:27017';

async function csvParser() {
    return new Promise((resolve, reject) => {
        const csvData = [];
        fs.createReadStream(csvFilePath)
            .pipe(csv())
            .on('data', (row) => {
                row.Subscribers = parseInt(row.Subscribers);
                row['Debut Date'] = new Date(row['Debut Date']);
                csvData.push(row);
            })
            .on('end', () => {
                console.log('CSV file ready');
                resolve(csvData);
            })
            .on('error', reject);
    });
}

async function main() {
    try {
        const data = await csvParser();
        console.log('Parsed Data:', data);

        const client = await MongoClient.connect(mongoUrl);
        const db = client.db('vtubers');
        const collection = db.collection('channels');
        
        await collection.insertMany(data);
        console.log('Data stored in MongoDB successfully');
        
        await client.close();
    } catch (error) {
        console.error('Error:', error);
    }
}

main();
