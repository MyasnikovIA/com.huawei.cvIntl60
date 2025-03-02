package com.google.api.client.util.store;

import com.google.api.client.util.IOUtils;
import com.google.api.client.util.Maps;
import com.google.api.client.util.Throwables;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class FileDataStoreFactory extends AbstractDataStoreFactory {
    private static final Logger LOGGER = Logger.getLogger(FileDataStoreFactory.class.getName());
    private final File dataDirectory;

    public FileDataStoreFactory(File file) {
        File canonicalFile = file.getCanonicalFile();
        this.dataDirectory = canonicalFile;
        if (IOUtils.isSymbolicLink(canonicalFile)) {
            String valueOf = String.valueOf(String.valueOf(canonicalFile));
            throw new IOException(new StringBuilder(valueOf.length() + 31).append("unable to use a symbolic link: ").append(valueOf).toString());
        }
        if (!canonicalFile.exists() && !canonicalFile.mkdirs()) {
            String valueOf2 = String.valueOf(String.valueOf(canonicalFile));
            throw new IOException(new StringBuilder(valueOf2.length() + 28).append("unable to create directory: ").append(valueOf2).toString());
        }
        setPermissionsToOwnerOnly(canonicalFile);
    }

    public final File getDataDirectory() {
        return this.dataDirectory;
    }

    @Override // com.google.api.client.util.store.AbstractDataStoreFactory
    protected <V extends Serializable> DataStore<V> createDataStore(String str) {
        return new FileDataStore(this, this.dataDirectory, str);
    }

    static class FileDataStore<V extends Serializable> extends AbstractMemoryDataStore<V> {
        private final File dataFile;

        FileDataStore(FileDataStoreFactory fileDataStoreFactory, File file, String str) {
            super(fileDataStoreFactory, str);
            this.dataFile = new File(file, str);
            if (IOUtils.isSymbolicLink(this.dataFile)) {
                String valueOf = String.valueOf(String.valueOf(this.dataFile));
                throw new IOException(new StringBuilder(valueOf.length() + 31).append("unable to use a symbolic link: ").append(valueOf).toString());
            }
            if (this.dataFile.createNewFile()) {
                this.keyValueMap = Maps.newHashMap();
                save();
            } else {
                this.keyValueMap = (HashMap) IOUtils.deserialize(new FileInputStream(this.dataFile));
            }
        }

        @Override // com.google.api.client.util.store.AbstractMemoryDataStore
        void save() {
            IOUtils.serialize(this.keyValueMap, new FileOutputStream(this.dataFile));
        }

        @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
        public FileDataStoreFactory getDataStoreFactory() {
            return (FileDataStoreFactory) super.getDataStoreFactory();
        }
    }

    static void setPermissionsToOwnerOnly(File file) {
        try {
            Method method = File.class.getMethod("setReadable", Boolean.TYPE, Boolean.TYPE);
            Method method2 = File.class.getMethod("setWritable", Boolean.TYPE, Boolean.TYPE);
            Method method3 = File.class.getMethod("setExecutable", Boolean.TYPE, Boolean.TYPE);
            if (!((Boolean) method.invoke(file, false, false)).booleanValue() || !((Boolean) method2.invoke(file, false, false)).booleanValue() || !((Boolean) method3.invoke(file, false, false)).booleanValue()) {
                Logger logger = LOGGER;
                String valueOf = String.valueOf(String.valueOf(file));
                logger.warning(new StringBuilder(valueOf.length() + 44).append("unable to change permissions for everybody: ").append(valueOf).toString());
            }
            if (!((Boolean) method.invoke(file, true, true)).booleanValue() || !((Boolean) method2.invoke(file, true, true)).booleanValue() || !((Boolean) method3.invoke(file, true, true)).booleanValue()) {
                Logger logger2 = LOGGER;
                String valueOf2 = String.valueOf(String.valueOf(file));
                logger2.warning(new StringBuilder(valueOf2.length() + 40).append("unable to change permissions for owner: ").append(valueOf2).toString());
            }
        } catch (IllegalAccessException e) {
        } catch (IllegalArgumentException e2) {
        } catch (NoSuchMethodException e3) {
            Logger logger3 = LOGGER;
            String valueOf3 = String.valueOf(String.valueOf(file));
            logger3.warning(new StringBuilder(valueOf3.length() + 93).append("Unable to set permissions for ").append(valueOf3).append(", likely because you are running a version of Java prior to 1.6").toString());
        } catch (SecurityException e4) {
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            Throwables.propagateIfPossible(cause, IOException.class);
            throw new RuntimeException(cause);
        }
    }
}
