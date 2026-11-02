.class Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
.super Ljava/util/HashMap;
.source "HttpParameterMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_postValueLengthLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    return-void
.end method

.method private getPostValueLengthLimit()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    return v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object p0
.end method

.method public final add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "foldToLowercase"    # Z

    .prologue
    .line 46
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_0
    return-object p0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 9

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v5, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    iget v7, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    if-le v7, v8, :cond_1

    .line 104
    const/4 v7, 0x0

    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 106
    :cond_1
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v2, v5, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .local v2, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v1, v2

    .line 119
    .end local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :goto_1
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->TAG:Ljava/lang/String;

    const-string v8, "Failed url encoding"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final getUrlEncodedParamString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 73
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    if-le v4, v5, :cond_2

    .line 79
    const/4 v4, 0x0

    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_2
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final setPostValueLengthLimit(I)V
    .locals 1
    .param p1, "postValueLengthLimit"    # I

    .prologue
    .line 27
    const/16 v0, 0xff

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->m_postValueLengthLimit:I

    .line 28
    return-void
.end method
