.class public Lcom/wwcd/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static _md:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/wwcd/util/MD5;->_md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static get16MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wwcd/util/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wwcd/util/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getMD5([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 21
    const-class v1, Lcom/wwcd/util/MD5;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wwcd/util/MD5;->_md:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 22
    sget-object v0, Lcom/wwcd/util/MD5;->_md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wwcd/util/StringUtil;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
