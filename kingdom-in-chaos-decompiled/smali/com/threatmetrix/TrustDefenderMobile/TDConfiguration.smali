.class Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;
.super Ljava/lang/Object;
.source "TDConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final ex_paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public final jb_paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public options:I

.field public w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->options:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->jb_paths:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->ex_paths:Ljava/util/ArrayList;

    return-void
.end method

.method private parseEX(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 7
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 90
    .local v2, "eventType":I
    const-string v0, ""

    .line 92
    .local v0, "currentTag":Ljava/lang/String;
    :goto_0
    if-eq v2, v3, :cond_2

    .line 94
    packed-switch v2, :pswitch_data_0

    .line 130
    :pswitch_0
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found unexpected event type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 101
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 102
    goto :goto_1

    .line 104
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    :goto_2
    return v3

    .line 108
    :pswitch_4
    if-eqz v0, :cond_0

    .line 110
    const-string v4, "E"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    :try_start_0
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->ex_paths:Ljava/util/ArrayList;

    new-instance v5, Ljava/net/URI;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/net/URISyntaxException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    const-string v5, "Failed to parse E into URI"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_1
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found tag content unexpectedly: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parsePS(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 43
    .local v1, "eventType":I
    const-string v0, ""

    .line 45
    .local v0, "currentTag":Ljava/lang/String;
    :goto_0
    if-eq v1, v2, :cond_2

    .line 47
    packed-switch v1, :pswitch_data_0

    .line 76
    :pswitch_0
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found unexpected event type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 51
    :pswitch_1
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 54
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    goto :goto_1

    .line 57
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    :goto_2
    return v2

    .line 61
    :pswitch_4
    if-eqz v0, :cond_0

    .line 63
    const-string v3, "P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->jb_paths:Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_1
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found tag content unexpectedly: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final isUsable()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final parseConfigFromStream(Ljava/io/InputStream;)Z
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x1

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "parseIssuesFound":Z
    const/4 v0, 0x0

    .line 161
    .local v0, "currentTag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 162
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 163
    .local v5, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 164
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 166
    .local v2, "eventType":I
    :goto_0
    if-eq v2, v6, :cond_4

    .line 168
    packed-switch v2, :pswitch_data_0

    .line 213
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->parsePS(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 208
    :cond_1
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 180
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 182
    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->parseEX(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 189
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 191
    goto :goto_1

    .line 193
    :pswitch_2
    const/4 v0, 0x0

    .line 194
    goto :goto_1

    .line 196
    :pswitch_3
    if-eqz v0, :cond_0

    .line 198
    const-string v7, "w"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 200
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 216
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    const-string v8, "IO Error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v4, 0x0

    .line 226
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-nez v4, :cond_6

    :goto_4
    return v6

    .line 202
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_1
    const-string v7, "O"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->options:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 221
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 223
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->TAG:Ljava/lang/String;

    const-string v8, "XML Parse Error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v4, 0x0

    goto :goto_3

    .line 226
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
