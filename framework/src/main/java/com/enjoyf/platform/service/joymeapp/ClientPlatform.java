package com.enjoyf.platform.service.joymeapp;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ericliu
 * Date: 13-5-27
 * Time: 下午2:06
 * To change this template use File | Settings | File Templates.
 */
public class ClientPlatform implements Serializable {
    private static Map<Integer, ClientPlatform> map = new HashMap<Integer, ClientPlatform>();

    public static final ClientPlatform IPHONE = new ClientPlatform(0);
    public static final ClientPlatform ANDROID = new ClientPlatform(1);
    public static final ClientPlatform IPAD = new ClientPlatform(2);

    private int code;

    public ClientPlatform(int code) {
        this.code = code;

        map.put(code, this);
    }

    public int getCode() {
        return code;
    }

    @Override
    public String toString() {
        return "ClientPlatform: code=" + code;
    }

    @Override
    public int hashCode() {
        return code;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;


        if (code != ((ClientPlatform) o).code) return false;

        return true;
    }

    public static ClientPlatform getByCode(int c) {
        return map.get(c);
    }

    public static Collection<ClientPlatform> getAll() {
        return map.values();
    }
}
