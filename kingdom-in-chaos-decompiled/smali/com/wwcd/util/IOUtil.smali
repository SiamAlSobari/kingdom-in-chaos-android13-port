.class public Lcom/wwcd/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field public static final BUFFER_LENGTH:I = 0x1400

.field private static final MAX_SPACE:J = 0x800000L

.field private static final NULL_LENGTH:I = -0x1

.field public static final TIMEOUT_PER_KB:I = 0x1388


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 125
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static varargs concatPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "concatenatedPath":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 34
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/wwcd/util/IOUtil;->endsWithSeparator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wwcd/ResourceNotExistException;,
            Lcom/wwcd/SuperIOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 91
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 93
    .local v7, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 100
    .local v5, "parentFile":Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 101
    invoke-static {v5}, Lcom/wwcd/util/IOUtil;->makeDirs(Ljava/io/File;)V

    .line 104
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 107
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "readCount":I
    if-lez v6, :cond_2

    .line 108
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 111
    .end local v0    # "buffer":[B
    .end local v6    # "readCount":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 112
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "parentFile":Ljava/io/File;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/wwcd/SuperIOException;->newIOException(Ljava/lang/Throwable;)Lcom/wwcd/SuperIOException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v2}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v3}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 116
    if-nez v7, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v8

    .line 94
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v8, Lcom/wwcd/ResourceNotExistException;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/wwcd/ResourceNotExistException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "parentFile":Ljava/io/File;
    .restart local v6    # "readCount":I
    :cond_2
    const/4 v7, 0x1

    .line 114
    invoke-static {v2}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v4}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 116
    if-nez v7, :cond_3

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 120
    :cond_3
    return-void

    .line 114
    .end local v0    # "buffer":[B
    .end local v6    # "readCount":I
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 111
    .end local v5    # "parentFile":Ljava/io/File;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static copyFile2(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8
    .param p0, "srcFileIs"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wwcd/ResourceNotExistException;,
            Lcom/wwcd/SuperIOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 64
    .local v6, "success":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 65
    .local v4, "parentFile":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 66
    invoke-static {v4}, Lcom/wwcd/util/IOUtil;->makeDirs(Ljava/io/File;)V

    .line 69
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 72
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readCount":I
    if-lez v5, :cond_2

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 76
    .end local v0    # "buffer":[B
    .end local v5    # "readCount":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 77
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "parentFile":Ljava/io/File;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/wwcd/SuperIOException;->newIOException(Ljava/lang/Throwable;)Lcom/wwcd/SuperIOException;

    move-result-object v7

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {p0}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v2}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 81
    if-nez v6, :cond_1

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v7

    .line 75
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "parentFile":Ljava/io/File;
    .restart local v5    # "readCount":I
    :cond_2
    const/4 v6, 0x1

    .line 79
    invoke-static {p0}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v3}, Lcom/wwcd/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 81
    if-nez v6, :cond_3

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 85
    :cond_3
    return-void

    .line 79
    .end local v0    # "buffer":[B
    .end local v5    # "readCount":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 76
    .end local v4    # "parentFile":Ljava/io/File;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static createFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 150
    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 167
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 168
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/wwcd/util/IOUtil;->delete(Ljava/io/File;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 172
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wwcd/util/IOUtil;->delete(Ljava/io/File;)V

    .line 162
    return-void
.end method

.method public static deleteFilesInDir(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 180
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 186
    :cond_0
    return-void

    .line 183
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 184
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/wwcd/util/IOUtil;->delete(Ljava/io/File;)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wwcd/util/IOUtil;->deleteFilesInDir(Ljava/io/File;)V

    .line 176
    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 16
    .param p0, "remoteURL"    # Ljava/lang/String;
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z

    .prologue
    .line 286
    const/4 v8, 0x0

    .line 287
    .local v8, "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 288
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 290
    .local v3, "fileStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v7, "localFile":Ljava/io/File;
    invoke-static {v7}, Lcom/wwcd/util/IOUtil;->ensureDirExists(Ljava/io/File;)V

    .line 293
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 294
    if-nez p2, :cond_3

    .line 295
    sget-object v11, Lcom/wwcd/logger/LoggerFactory;->logger:Lcom/wwcd/logger/Logger;

    const-class v12, Lcom/wwcd/util/IOUtil;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "exist"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/wwcd/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const/4 v11, 0x1

    .line 329
    if-eqz v8, :cond_0

    .line 331
    :try_start_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 337
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 341
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v7    # "localFile":Ljava/io/File;
    :cond_2
    :goto_2
    return v11

    .line 299
    .restart local v7    # "localFile":Ljava/io/File;
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 303
    :cond_4
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 304
    .local v6, "fileurl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 305
    const/16 v11, 0x1388

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 307
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    .end local v3    # "fileStream":Ljava/io/DataInputStream;
    .local v4, "fileStream":Ljava/io/DataInputStream;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 311
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    .end local v8    # "output":Ljava/io/OutputStream;
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v11, 0x1400

    :try_start_5
    new-array v5, v11, [B

    .line 315
    .local v5, "filebyte":[B
    :goto_3
    const/4 v11, 0x0

    const/16 v12, 0x1400

    invoke-virtual {v4, v5, v11, v12}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v10

    .line 316
    .local v10, "readCount":I
    if-gez v10, :cond_8

    .line 321
    const/4 v11, 0x1

    .line 329
    if-eqz v9, :cond_5

    .line 331
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 335
    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    .line 337
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 341
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 319
    .end local v3    # "fileStream":Ljava/io/DataInputStream;
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :cond_8
    const/4 v11, 0x0

    :try_start_8
    invoke-virtual {v9, v5, v11, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 322
    .end local v5    # "filebyte":[B
    .end local v10    # "readCount":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .line 324
    .end local v6    # "fileurl":Ljava/net/URL;
    .end local v7    # "localFile":Ljava/io/File;
    .end local v9    # "output":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :goto_6
    :try_start_9
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 327
    :goto_7
    const/4 v11, 0x0

    .line 329
    if-eqz v8, :cond_9

    .line 331
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 335
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 337
    :try_start_b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 341
    :cond_a
    :goto_9
    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_a
    if-eqz v8, :cond_b

    .line 331
    :try_start_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 335
    :cond_b
    :goto_b
    if-eqz v3, :cond_c

    .line 337
    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 341
    :cond_c
    :goto_c
    if-eqz v1, :cond_d

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v11

    .line 332
    .restart local v7    # "localFile":Ljava/io/File;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 338
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 332
    .end local v3    # "fileStream":Ljava/io/DataInputStream;
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v5    # "filebyte":[B
    .restart local v6    # "fileurl":Ljava/net/URL;
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "readCount":I
    :catch_3
    move-exception v12

    goto :goto_4

    .line 338
    :catch_4
    move-exception v12

    goto :goto_5

    .line 332
    .end local v4    # "fileStream":Ljava/io/DataInputStream;
    .end local v5    # "filebyte":[B
    .end local v6    # "fileurl":Ljava/net/URL;
    .end local v7    # "localFile":Ljava/io/File;
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "readCount":I
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileStream":Ljava/io/DataInputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v12

    goto :goto_8

    .line 338
    :catch_6
    move-exception v12

    goto :goto_9

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v12

    goto :goto_b

    .line 338
    :catch_8
    move-exception v12

    goto :goto_c

    .line 329
    .end local v3    # "fileStream":Ljava/io/DataInputStream;
    .restart local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v6    # "fileurl":Ljava/net/URL;
    .restart local v7    # "localFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileStream":Ljava/io/DataInputStream;
    goto :goto_a

    .end local v3    # "fileStream":Ljava/io/DataInputStream;
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_a

    .line 325
    .end local v6    # "fileurl":Ljava/net/URL;
    .end local v7    # "localFile":Ljava/io/File;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v11

    goto :goto_7

    .line 322
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v2

    goto :goto_6

    .end local v3    # "fileStream":Ljava/io/DataInputStream;
    .restart local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v6    # "fileurl":Ljava/net/URL;
    .restart local v7    # "localFile":Ljava/io/File;
    :catch_b
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileStream":Ljava/io/DataInputStream;
    goto :goto_6
.end method

.method private static endsWithSeparator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ensureDirExists(Ljava/io/File;)V
    .locals 2
    .param p0, "localFile"    # Ljava/io/File;

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 277
    .local v0, "parentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_0
    return-void
.end method

.method public static getCanonicalPath(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "lastDotIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTmpDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    const-string v0, "/sdcard/.servotmp"

    .line 244
    .local v0, "defaultTmpDir":Ljava/lang/String;
    invoke-static {}, Lcom/wwcd/util/IOUtil;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    .end local v0    # "defaultTmpDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 247
    .restart local v0    # "defaultTmpDir":Ljava/lang/String;
    :cond_0
    const-string v2, "java.io.tmpdir"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "tmpDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/wwcd/util/IOUtil;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUsedSpace(Ljava/io/File;)J
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 256
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 257
    :cond_0
    const-wide/16 v4, 0x0

    .line 268
    :cond_1
    :goto_0
    return-wide v4

    .line 260
    :cond_2
    const-wide/16 v4, 0x0

    .line 261
    .local v4, "length":J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 263
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/wwcd/util/IOUtil;->getUsedSpace(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_0
.end method

.method public static isAndroid()Z
    .locals 2

    .prologue
    .line 252
    const-string v0, "Dalvik"

    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExceedLimitation(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wwcd/util/IOUtil;->getUsedSpace(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDirs(Ljava/io/File;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wwcd/SuperIOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 137
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 138
    new-instance v1, Lcom/wwcd/SuperIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wwcd/SuperIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readBytes(Ljava/io/ByteArrayInputStream;)[B
    .locals 4
    .param p0, "bais"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 213
    invoke-static {p0}, Lcom/wwcd/util/IOUtil;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 214
    .local v1, "length":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-array v0, v1, [B

    .line 218
    .local v0, "bytes":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    goto :goto_0
.end method

.method public static readInt(Ljava/io/ByteArrayInputStream;)I
    .locals 6
    .param p0, "bais"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 197
    .local v0, "b1":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 198
    .local v1, "b2":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 199
    .local v2, "b3":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 200
    .local v3, "b4":I
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    add-int/2addr v4, v5

    return v4
.end method

.method public static readString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "bais"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/wwcd/util/IOUtil;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 229
    .local v1, "length":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 230
    const/4 v2, 0x0

    .line 235
    :goto_0
    return-object v2

    .line 232
    :cond_0
    new-array v0, v1, [B

    .line 233
    .local v0, "bytes":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 234
    invoke-static {v0}, Lcom/wwcd/util/StringUtil;->newString([B)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public static writeBytes(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 2
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "bytes"    # [B

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    invoke-static {p0}, Lcom/wwcd/util/IOUtil;->writeNull(Ljava/io/ByteArrayOutputStream;)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/wwcd/util/IOUtil;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 208
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    return-void
.end method

.method public static writeNull(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 239
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/wwcd/util/IOUtil;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 240
    return-void
.end method

.method public static writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 224
    .local v0, "bytes":[B
    :goto_0
    invoke-static {p0, v0}, Lcom/wwcd/util/IOUtil;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    .line 225
    return-void

    .line 223
    .end local v0    # "bytes":[B
    :cond_0
    invoke-static {p1}, Lcom/wwcd/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
