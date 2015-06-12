package com.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.bson.BSONObject;

import com.alibaba.fastjson.JSON;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;

/**
 * mongoDB测试
 * 
 * @author admin
 * 
 */
public class MongodbTest {

	private static Mongo mongo;
	private static DB db;
	private static DBCollection dbCollection;
	private static GridFS gridFS;

	private final static String HOST = "192.168.237.130";
	private final static int PORT = 20108;
	private final static String BD_NAME = "local";
	private final static String COLLECTION_NAME = "user";

	public MongodbTest() {
		init();
	}

	@SuppressWarnings("deprecation")
	public static void init() {
		mongo = new MongoClient(HOST, PORT);
		db = mongo.getDB(BD_NAME);
		dbCollection = db.getCollection(COLLECTION_NAME);
		gridFS = new GridFS(db);
	}

	public static void find() {
		DBCursor cursor = dbCollection.find();
		while (cursor.hasNext()) {
			System.out.println(cursor.next());
		}
	}

	/**
	 * 上传文件
	 * 
	 * @param path
	 * @param filename
	 */
	private void uploadFile(String path, String filename) {
		InputStream inputStream = null;
		try {
			DBObject dbObject = new BasicDBObject("_id", filename);
			GridFSDBFile gridFSDBFile = gridFS.findOne(dbObject);

			if (null != gridFSDBFile) {// 存在此文件名的文件则不上传
				return;
			}

			inputStream = new FileInputStream(new File(path));
			GridFSInputFile gridFSInputFile = gridFS.createFile(inputStream);

			gridFSInputFile.save();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private GridFSDBFile getFS(String filename) {
		DBObject dbObject = new BasicDBObject("filename", filename);
		GridFSDBFile gridFSDBFile = gridFS.findOne(dbObject);
		return gridFSDBFile;
	}
	
	public static void main(String[] args) {
		MongodbTest test = new MongodbTest();
		// test.find();

		String path = "d:/qq.png";
		String filename = "qq.png";
		test.uploadFile(path, filename);
		
		GridFSDBFile file = test.getFS(filename);

		System.out.println(JSON.toJSONString(file));
	}

}
