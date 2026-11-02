.class public Lcom/droidhang/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuiet(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 14
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :cond_0
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveFile([BLjava/lang/String;)V
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 26
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 28
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    invoke-static {v3}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 35
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v4, "dh"

    const-string v5, "save featured img failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {v2}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 29
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
