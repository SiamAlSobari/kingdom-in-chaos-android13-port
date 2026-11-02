.class public Lcom/tapjoy/TapjoyUtil;
.super Ljava/lang/Object;
.source "TapjoyUtil.java"


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "com/tapjoy/res/"

.field private static final TAG:Ljava/lang/String; = "TapjoyUtil"

.field private static _resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mraidJs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyUtil;->mraidJs:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyUtil;->_resources:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "SHA-256"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 8
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 145
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 149
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 152
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildDocument exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 114
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 115
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 119
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_0

    const/16 v5, 0x9

    if-gt v1, v5, :cond_0

    .line 120
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 126
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 129
    .end local v1    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v1    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method public static convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 5
    .param p1, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ""

    .line 343
    .local v2, "result":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_0
    if-eqz p1, :cond_1

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 352
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 355
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v2
.end method

.method public static convertURLParams(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "decode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 366
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 370
    .local v3, "index":I
    const/4 v0, 0x0

    .line 371
    .local v0, "KEY":I
    const/4 v1, 0x1

    .line 372
    .local v1, "VALUE":I
    const/4 v5, 0x0

    .line 374
    .local v5, "mode":I
    const-string v8, ""

    .line 375
    .local v8, "word":Ljava/lang/String;
    const-string v4, ""

    .line 376
    .local v4, "key":Ljava/lang/String;
    const-string v7, ""

    .line 379
    .local v7, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_6

    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    .line 382
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 385
    .local v2, "c":C
    if-nez v5, :cond_3

    .line 388
    const/16 v9, 0x3d

    if-ne v2, v9, :cond_2

    .line 390
    const/4 v5, 0x1

    .line 391
    if-eqz p1, :cond_1

    .line 392
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    :goto_1
    const-string v8, ""

    .line 428
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    :cond_1
    move-object v4, v8

    goto :goto_1

    .line 400
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 405
    :cond_3
    if-ne v5, v10, :cond_0

    .line 408
    const/16 v9, 0x26

    if-ne v2, v9, :cond_5

    .line 410
    const/4 v5, 0x0

    .line 412
    if-eqz p1, :cond_4

    .line 413
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 416
    :goto_3
    const-string v8, ""

    .line 419
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 415
    :cond_4
    move-object v7, v8

    goto :goto_3

    .line 424
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 432
    .end local v2    # "c":C
    :cond_6
    if-ne v5, v10, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 434
    if-eqz p1, :cond_8

    .line 435
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 439
    :goto_4
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_7
    return-object v6

    .line 437
    :cond_8
    move-object v7, v8

    goto :goto_4
.end method

.method public static copyTextFromJarIntoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 549
    .local v2, "buff":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 551
    .local v7, "in":Ljava/io/InputStream;
    const-class v12, Lcom/tapjoy/TapjoyUtil;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    .line 554
    .local v11, "url":Ljava/net/URL;
    if-eqz p1, :cond_1

    if-nez v11, :cond_1

    .line 556
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 557
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 577
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 578
    .local v9, "numread":I
    if-gtz v9, :cond_5

    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 589
    if-eqz v7, :cond_0

    .line 591
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    :goto_1
    const/4 v7, 0x0

    .line 598
    .end local v9    # "numread":I
    :cond_0
    :goto_2
    return-object v12

    .line 561
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "file":Ljava/lang/String;
    const-string v12, "jar:"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 563
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 565
    :cond_2
    const-string v12, "file:"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 566
    const/4 v12, 0x5

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 568
    :cond_3
    const-string v12, "!"

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 569
    .local v10, "pos":I
    if-lez v10, :cond_4

    .line 570
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 571
    :cond_4
    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 572
    .local v8, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v8, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 573
    .local v5, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v8, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0

    .line 580
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v6    # "file":Ljava/lang/String;
    .end local v8    # "jf":Ljava/util/jar/JarFile;
    .end local v10    # "pos":I
    .restart local v9    # "numread":I
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 581
    .local v1, "bstring":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 585
    .end local v1    # "bstring":Ljava/lang/String;
    .end local v9    # "numread":I
    :catch_0
    move-exception v4

    .line 586
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "TapjoyUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    if-eqz v7, :cond_6

    .line 591
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 595
    :goto_3
    const/4 v7, 0x0

    .line 598
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 589
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v7, :cond_7

    .line 591
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 595
    :goto_4
    const/4 v7, 0x0

    :cond_7
    throw v12

    .line 592
    .restart local v9    # "numread":I
    :catch_1
    move-exception v13

    goto :goto_1

    .end local v9    # "numread":I
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto :goto_4
.end method

.method public static createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 268
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error creating bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 7
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 209
    .local v1, "child":Ljava/io/File;
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v4, "TapjoyUtil"

    const-string v5, "****************************************"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v4, "TapjoyUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteFileOrDirectory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "TapjoyUtil"

    const-string v5, "****************************************"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 216
    return-void
.end method

.method public static determineMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2e

    .line 630
    const-string v0, ""

    .line 634
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 638
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 639
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_1
    const-string v2, "css"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    const-string v1, "text/css"

    .line 652
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 645
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    const-string v2, "js"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    const-string v1, "text/javascript"

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 647
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 648
    const-string v1, "text/html"

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 650
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_4
    const-string v1, "application/octet-stream"

    .restart local v1    # "mimeType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static fileOrDirectorySize(Ljava/io/File;)J
    .locals 8
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 225
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "length":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 227
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 226
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->fileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 233
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-wide v4
.end method

.method public static getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v6, 0x0

    .line 170
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 171
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 173
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 175
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 177
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 179
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 181
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 182
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v5, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 188
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 195
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_2
    return-object v6
.end method

.method public static getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hostURL"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string v0, ""

    .line 620
    .local v0, "redirectDomain":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 621
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "//"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_0
    return-object v0
.end method

.method public static getResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 611
    sget-object v0, Lcom/tapjoy/TapjoyUtil;->_resources:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static hashAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hash"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 91
    const/16 v2, 0x28

    new-array v1, v2, [B

    .line 94
    .local v1, "sha1hash":[B
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 95
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static loadBitmapFromJar(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    const/4 v2, 0x0

    .line 464
    .local v2, "bitmapData":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 468
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    move-object v3, v14

    check-cast v3, [B

    .line 469
    .local v3, "bytes":[B
    if-eqz v3, :cond_0

    .line 470
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v15, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 471
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 475
    :cond_0
    if-nez v2, :cond_1

    .line 476
    const/4 v7, 0x0

    .line 479
    .local v7, "in":Ljava/io/InputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "com/tapjoy/res/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 482
    :try_start_0
    const-class v14, Lcom/tapjoy/TapjoyUtil;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    .line 483
    .local v13, "url":Ljava/net/URL;
    if-nez v13, :cond_4

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 486
    .local v1, "am":Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 489
    const/4 v14, 0x0

    invoke-static {v7, v14, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 492
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 518
    .end local v1    # "am":Landroid/content/res/AssetManager;
    :goto_0
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 524
    if-eqz v7, :cond_1

    .line 526
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 532
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v13    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result v11

    .line 533
    .local v11, "scale":F
    if-eqz v2, :cond_2

    .line 534
    iget v14, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-int v14, v14

    iget v15, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v11

    float-to-int v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 535
    .local v12, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object v2, v12

    .end local v12    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v14, v2

    .line 538
    .end local v11    # "scale":F
    :cond_3
    :goto_2
    return-object v14

    .line 496
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_4
    :try_start_2
    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, "file":Ljava/lang/String;
    const-string v14, "jar:"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 498
    const/4 v14, 0x4

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 500
    :cond_5
    const-string v14, "file:"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 501
    const/4 v14, 0x5

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 503
    :cond_6
    const-string v14, "!"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 504
    .local v10, "pos":I
    if-lez v10, :cond_7

    .line 505
    const/4 v14, 0x0

    invoke-virtual {v6, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 506
    :cond_7
    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 507
    .local v8, "jf":Ljava/util/jar/JarFile;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 508
    .local v5, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v8, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 511
    const/4 v14, 0x0

    invoke-static {v7, v14, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 514
    invoke-virtual {v8, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 520
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v6    # "file":Ljava/lang/String;
    .end local v8    # "jf":Ljava/util/jar/JarFile;
    .end local v10    # "pos":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 521
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 522
    const/4 v14, 0x0

    .line 524
    if-eqz v7, :cond_3

    .line 526
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 527
    :catch_1
    move-exception v15

    goto :goto_2

    .line 524
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v7, :cond_8

    .line 526
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 527
    :cond_8
    :goto_3
    throw v14

    .restart local v13    # "url":Ljava/net/URL;
    :catch_2
    move-exception v14

    goto :goto_1

    .end local v13    # "url":Ljava/net/URL;
    :catch_3
    move-exception v15

    goto :goto_3
.end method

.method public static safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    if-eqz p3, :cond_1

    .line 327
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static scaleDisplayAd(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p0, "adView"    # Landroid/view/View;
    .param p1, "targetWidth"    # I

    .prologue
    const/4 v10, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    .local v1, "adWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    .local v0, "adHeight":I
    const-string v6, "TapjoyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wxh: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-le v1, p1, :cond_0

    .line 296
    move v5, p1

    .line 297
    .local v5, "width":I
    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 298
    .local v4, "val":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 299
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    .local v3, "scale":I
    move-object v6, p0

    .line 301
    check-cast v6, Landroid/webkit/WebView;

    check-cast v6, Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    move-object v6, p0

    .line 302
    check-cast v6, Landroid/webkit/WebView;

    check-cast v6, Landroid/webkit/WebView;

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/webkit/WebView;->setPadding(IIII)V

    move-object v6, p0

    .line 303
    check-cast v6, Landroid/webkit/WebView;

    check-cast v6, Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    move-object v6, p0

    .line 304
    check-cast v6, Landroid/webkit/WebView;

    check-cast v6, Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    move-object v6, p0

    .line 305
    check-cast v6, Landroid/webkit/WebView;

    check-cast v6, Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 308
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    mul-int v6, p1, v0

    div-int/2addr v6, v1

    invoke-direct {v2, p1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 309
    .local v2, "layout":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    .end local v2    # "layout":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "scale":I
    .end local v4    # "val":Ljava/lang/Double;
    .end local v5    # "width":I
    :cond_0
    return-object p0
.end method

.method public static setResource(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 603
    sget-object v0, Lcom/tapjoy/TapjoyUtil;->_resources:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    return-void
.end method

.method public static writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 244
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 245
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 247
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method
