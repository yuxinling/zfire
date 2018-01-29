package com.dev.huining.soft.web.zfire.utils;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.io.Input;
import com.esotericsoftware.kryo.io.Output;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.UUID;

/**
 * User: jiqunzheng
 * Date: 5/6/13
 */

public class Kryos {

	private static ThreadLocal<Kryo> localKryo = new ThreadLocal<Kryo>();
	private static Logger logger = LoggerFactory.getLogger(Kryos.class);

	public static byte[] objectToBytes(Object obj) {
		Kryo kryo = localKryo.get();
		if (kryo == null) {
			kryo = createKryo();
			localKryo.set(kryo);
		}

		try {
			ByteArrayOutputStream bao = new ByteArrayOutputStream();
			Output output = new Output(bao);
			kryo.writeClassAndObject(output, obj);
			output.flush();
			byte[] bytes = bao.toByteArray();
			output.close();
			bao.close();
			return bytes;
		} catch (IOException e) {
			logger.error("Failed to serialize object with kryo.", e);
			return null;
		}
	}

	public static Object bytesToObject(byte[] bytes) {
		Kryo kryo = localKryo.get();
		if (kryo == null) {
			kryo = createKryo();
			localKryo.set(kryo);
		}
		Input input = null;
		try {
			input = new Input(new ByteArrayInputStream(bytes));
			Object obj = kryo.readClassAndObject(input);

			return obj;
		} catch (KryoException e) {
			if (e.getCause() instanceof ClassNotFoundException) {
				logger.debug(e.getCause().getMessage());
			} else {
				logger.error("Failed to deserialize object with kryo.   Base64", e);
			}
			return null;
		} finally {
			if (input != null)
				input.close();
		}
	}

	private static Kryo createKryo() {
		Kryo kryo = new Kryo();
		kryo.register(UUID.class, new UUIDKyroSerializer());
		return kryo;
	}

	private static class UUIDKyroSerializer extends Serializer<UUID> {
		{
			setImmutable(true);
		}

		@Override
		public void write(Kryo kryo, Output output, UUID object) {
			output.writeString(object.toString());
		}


		@Override
		public UUID read(Kryo kryo, Input input, Class<UUID> type) {
			return UUID.fromString(input.readString());
		}
	}
}
