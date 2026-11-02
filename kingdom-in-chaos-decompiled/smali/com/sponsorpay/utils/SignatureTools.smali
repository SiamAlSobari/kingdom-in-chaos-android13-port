.class public Lcom/sponsorpay/utils/SignatureTools;
.super Ljava/lang/Object;
.source "SignatureTools.java"


# static fields
.field public static final NO_SHA1_RESULT:Ljava/lang/String; = "nosha1"

.field private static final SHA1_ALGORITHM:Ljava/lang/String; = "SHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArray2Hex([B)Ljava/lang/String;
    .locals 9
    .param p0, "hash"    # [B

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 94
    .local v1, "formatter":Ljava/util/Formatter;
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "hexValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 99
    return-object v2

    .line 94
    .end local v2    # "hexValue":Ljava/lang/String;
    :cond_0
    aget-byte v0, p0, v3

    .line 95
    .local v0, "b":B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static generateSHA1ForString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v1, "nosha1"

    .line 82
    .local v1, "digestString":Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 83
    .local v3, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 84
    .local v0, "digestBytes":[B
    invoke-static {v0}, Lcom/sponsorpay/utils/SignatureTools;->byteArray2Hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    .end local v0    # "digestBytes":[B
    .end local v3    # "sha1":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "UrlBuilder"

    const-string v5, "SHA1 algorithm not available."

    invoke-static {v4, v5, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static generateSignatureForParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "secretToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 45
    .local v2, "orderedKeys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 49
    .local v3, "orderedKeysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v0, ""

    .line 51
    .local v0, "concatenatedOrderedParams":Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    invoke-static {v0, p1}, Lcom/sponsorpay/utils/SignatureTools;->generateSignatureForString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 52
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%s=%s&"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateSignatureForString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "secretToken"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "textPlusKey":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/utils/SignatureTools;->generateSHA1ForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
