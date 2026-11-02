.class public Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;
.super Ljava/lang/Object;
.source "PersistentHttpCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# static fields
.field private static final COOKIE_NAME_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final COOKIE_NAME_STORE:Ljava/lang/String; = "names"

.field private static final COOKIE_PREFS:Ljava/lang/String; = "CookiePrefsFile"

.field private static final LOG_TAG:Ljava/lang/String; = "PersistentHttpCookieStore"


# instance fields
.field private final cookiePrefs:Landroid/content/SharedPreferences;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v6, "CookiePrefsFile"

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    .line 53
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    .line 56
    iget-object v6, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    const-string v7, "names"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "storedCookieNames":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 59
    const-string v6, ","

    invoke-static {v4, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "cookieNames":[Ljava/lang/String;
    array-length v6, v0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 69
    .end local v0    # "cookieNames":[Ljava/lang/String;
    :cond_0
    return-void

    .line 60
    .restart local v0    # "cookieNames":[Ljava/lang/String;
    :cond_1
    aget-object v3, v0, v5

    .line 61
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cookie_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "encodedCookies":Ljava/lang/String;
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    invoke-direct {p0, v2}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->decodeCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v7, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private cookiesUri(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 308
    if-nez p1, :cond_0

    move-object p1, v1

    .line 315
    .end local p1    # "uri":Ljava/net/URI;
    :goto_0
    return-object p1

    .line 313
    .restart local p1    # "uri":Ljava/net/URI;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0
.end method

.method private decodeCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "encodedCookies"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 97
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const-string v3, ","

    invoke-static {p1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "serializedCookies":[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 101
    return-object v1

    .line 98
    :cond_0
    aget-object v0, v2, v3

    .line 99
    .local v0, "cookie":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->decodeCookie(Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private encodeCookies(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 106
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 107
    .local v1, "cookie":Ljava/net/HttpCookie;
    new-instance v3, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;

    invoke-direct {v3, v1}, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;-><init>(Ljava/net/HttpCookie;)V

    invoke-virtual {p0, v3}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->encodeCookie(Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 72
    monitor-enter p0

    if-nez p2, :cond_0

    .line 73
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "cookie == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiesUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 77
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 88
    .local v1, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    const-string v2, "names"

    .line 89
    const-string v3, ","

    iget-object v4, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cookie_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-direct {p0, v0}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->encodeCookies(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 82
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 280
    :cond_0
    aget-byte v0, p1, v3

    .line 281
    .local v0, "element":B
    and-int/lit16 v2, v0, 0xff

    .line 282
    .local v2, "v":I
    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 283
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected decodeCookie(Ljava/lang/String;)Ljava/net/HttpCookie;
    .locals 8
    .param p1, "cookieString"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 251
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 256
    .local v2, "cookie":Ljava/net/HttpCookie;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .local v4, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;

    .line 259
    invoke-virtual {v5}, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->getCookie()Ljava/net/HttpCookie;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 266
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "PersistentHttpCookieStore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException in decodeCookie - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "PersistentHttpCookieStore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ClassNotFoundException in decodeCookie - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected encodeCookie(Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;)Ljava/lang/String;
    .locals 7
    .param p1, "cookie"    # Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;

    .prologue
    const/4 v3, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return-object v3

    .line 230
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 233
    .local v2, "outputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 234
    .end local v2    # "outputStream":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PersistentHttpCookieStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException in encodeCookie - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized get(Ljava/net/URI;)Ljava/util/List;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    if-nez p1, :cond_0

    .line 118
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "uri == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 121
    :cond_0
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v6, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 124
    .local v1, "cookiesForUri":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 135
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_1
    iget-object v6, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 154
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 126
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 127
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 130
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 140
    .local v3, "entryCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 143
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 147
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 148
    :cond_7
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 149
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v4, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 159
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 160
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 162
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 164
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 165
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getURIs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 173
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 299
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 300
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 304
    return-object v0

    .line 301
    :cond_0
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 302
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 301
    aput-byte v4, v0, v3

    .line 300
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 179
    monitor-enter p0

    if-nez p2, :cond_0

    .line 180
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cookie == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 183
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiesUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 184
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_3

    .line 186
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 187
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 188
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 189
    .local v1, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cookie_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "result":Z
    :cond_1
    :goto_1
    monitor-exit p0

    return v2

    .line 192
    .restart local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "result":Z
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cookie_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-direct {p0, v0}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->encodeCookies(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 199
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "result":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized removeAll()Z
    .locals 6

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    .local v1, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    const-string v3, "names"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 214
    .local v2, "result":Z
    :goto_1
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return v2

    .line 206
    .end local v2    # "result":Z
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 207
    .local v0, "name":Ljava/net/URI;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cookie_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    .end local v0    # "name":Ljava/net/URI;
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 213
    .restart local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
