.class public Lcom/testin/agent/e/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v1}, Lcom/testin/agent/TestinAgentConfig;->isCollectNDKCrash()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v1, "NativeCrash"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_2
    :goto_1
    sget-object v1, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v1}, Lcom/testin/agent/TestinAgentConfig;->isCollectNDKCrash()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "libNativeCrash.so does not exist!!! Please copy the file to libs"

    invoke-static {v1}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Lcom/testin/agent/e/b;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/testin/agent/e/b;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, Lcom/testin/agent/e/b;->d(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v3, v2

    goto :goto_1

    :cond_6
    move-object v3, v2

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "/com.testin.agent/lib/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "libNativeCrash.so"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v2}, Lcom/testin/agent/e/b;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/testin/agent/e/b;->d(Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 3

    const-string v0, "armeabi"

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "libNativeCrash.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
