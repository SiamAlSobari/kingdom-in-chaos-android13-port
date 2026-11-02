.class public Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SerializableHttpCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x53fafe4fb20583e0L


# instance fields
.field private transient cookie:Ljava/net/HttpCookie;


# direct methods
.method public constructor <init>(Ljava/net/HttpCookie;)V
    .locals 0
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    .line 21
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v0, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    .line 46
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 49
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 51
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 54
    iget-object v2, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 55
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 33
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 35
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 38
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/net/HttpCookie;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sponsorpay/utils/cookies/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    return-object v0
.end method
