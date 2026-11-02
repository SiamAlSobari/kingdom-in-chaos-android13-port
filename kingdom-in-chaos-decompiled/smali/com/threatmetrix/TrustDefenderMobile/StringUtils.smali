.class Lcom/threatmetrix/TrustDefenderMobile/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hexArray:[C

.field private static final m_md5Digest:Ljava/security/MessageDigest;

.field private static final m_sha1Digest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    .line 18
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->hexArray:[C

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "temp":Ljava/security/MessageDigest;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    .line 31
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :cond_0
    :goto_0
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_sha1Digest:Ljava/security/MessageDigest;

    .line 41
    const/4 v0, 0x0

    .line 43
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    .line 48
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 55
    :cond_1
    :goto_1
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_md5Digest:Ljava/security/MessageDigest;

    .line 56
    return-void

    .line 35
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ListToSeperatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seperator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, "l":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 274
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    .end local v1    # "l":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    const-string v1, ""

    .line 106
    :goto_0
    return-object v1

    .line 87
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1, p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_md5Digest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_3

    .line 94
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_md5Digest:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 96
    :try_start_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 99
    .local v0, "outputData":[B
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 102
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "outputData":[B
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 106
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    const-string v1, ""

    .line 138
    :goto_0
    return-object v1

    .line 120
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1, p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_2
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_sha1Digest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_3

    .line 127
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_sha1Digest:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 129
    :try_start_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_sha1Digest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_sha1Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 132
    .local v0, "outputData":[B
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->m_sha1Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 135
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "outputData":[B
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 138
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 143
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 144
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 146
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 147
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 148
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private static mapToHeader(Ljava/util/Map;)[Lorg/apache/http/Header;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Lorg/apache/http/Header;

    .line 291
    .local v3, "header":[Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 293
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    new-instance v7, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 305
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/http/Header;

    return-object v5
.end method

.method static new_session_id()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    .line 195
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v0, "uuid":Ljava/util/UUID;
    :goto_0
    return-object v1

    .line 200
    .end local v0    # "uuid":Ljava/util/UUID;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 202
    .restart local v0    # "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static splitNonRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    return-object v1

    .line 227
    :cond_1
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 228
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 231
    goto :goto_0
.end method

.method static splitQuery(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 243
    .local v4, "query_pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "&"

    invoke-static {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->splitNonRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, "pairs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "pair":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "idx":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v5

    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 256
    .end local v1    # "idx":I
    .end local v2    # "pair":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v1, p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 66
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->TAG:Ljava/lang/String;

    const-string v2, "Failed url encoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v8, p0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    :goto_0
    return-object v8

    .line 165
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "lengthString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-array v0, v8, [B

    .line 169
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 170
    .local v6, "k_len":I
    const/4 v4, 0x0

    .line 171
    .local v4, "index":I
    const/4 v1, 0x0

    .line 174
    .local v1, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 176
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .local v2, "c":I
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit8 v9, v9, 0xa

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 177
    if-lt v5, v6, :cond_4

    const/4 v4, 0x0

    .line 174
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2    # "c":I
    .restart local v1    # "c":I
    goto :goto_1

    .line 182
    :cond_1
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 184
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .restart local v2    # "c":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit8 v9, v9, 0xa

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 186
    if-lt v5, v6, :cond_3

    const/4 v4, 0x0

    .line 182
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2    # "c":I
    .restart local v1    # "c":I
    goto :goto_3

    .line 189
    :cond_2
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .end local v1    # "c":I
    .end local v4    # "index":I
    .restart local v2    # "c":I
    .restart local v5    # "index":I
    :cond_3
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_4
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2
.end method
