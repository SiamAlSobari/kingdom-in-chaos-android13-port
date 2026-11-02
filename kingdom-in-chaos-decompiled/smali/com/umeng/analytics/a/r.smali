.class public Lcom/umeng/analytics/a/r;
.super Ljava/lang/Object;
.source "UUserInfo.java"

# interfaces
.implements Lcom/umeng/analytics/a/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/umeng/analytics/Gender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "id"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->a:Ljava/lang/String;

    .line 9
    const-string v0, "url"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->b:Ljava/lang/String;

    .line 10
    const-string v0, "age"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->c:Ljava/lang/String;

    .line 11
    const-string v0, "sex"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/umeng/analytics/Gender;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "id"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->a:Ljava/lang/String;

    .line 9
    const-string v0, "url"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->b:Ljava/lang/String;

    .line 10
    const-string v0, "age"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->c:Ljava/lang/String;

    .line 11
    const-string v0, "sex"

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->d:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/umeng/analytics/a/r;->e:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/umeng/analytics/a/r;->g:I

    .line 23
    iput-object p3, p0, Lcom/umeng/analytics/a/r;->h:Lcom/umeng/analytics/Gender;

    .line 24
    iput-object p4, p0, Lcom/umeng/analytics/a/r;->f:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->e:Ljava/lang/String;

    .line 30
    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->f:Ljava/lang/String;

    .line 31
    :cond_1
    const-string v0, "age"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "age"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/a/r;->g:I

    .line 32
    :cond_2
    const-string v0, "sex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/umeng/analytics/Gender;->getGender(I)Lcom/umeng/analytics/Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/r;->h:Lcom/umeng/analytics/Gender;

    .line 33
    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/analytics/a/r;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "id"

    iget-object v1, p0, Lcom/umeng/analytics/a/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/r;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "url"

    iget-object v1, p0, Lcom/umeng/analytics/a/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_1
    iget v0, p0, Lcom/umeng/analytics/a/r;->g:I

    if-ltz v0, :cond_2

    const-string v0, "age"

    iget v1, p0, Lcom/umeng/analytics/a/r;->g:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    :cond_2
    const-string v0, "sex"

    iget-object v1, p0, Lcom/umeng/analytics/a/r;->h:Lcom/umeng/analytics/Gender;

    invoke-virtual {v1}, Lcom/umeng/analytics/Gender;->value()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    return-void
.end method
