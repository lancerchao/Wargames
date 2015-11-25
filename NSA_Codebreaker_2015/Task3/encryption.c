#include <openssl/bio.h>
#include <openssl/evp.h>
#include <string.h>
#include <inttypes.h>
#include <sha.h>
#include <pem.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <rsa.h>
#include <openssl/hmac.h>
#include <openssl/buffer.h>

char *decode64(unsigned char *input, int length)
{
  BIO *b64, *bmem;

  char *buffer = (char *)malloc(length);
  memset(buffer, 0, length);

  b64 = BIO_new(BIO_f_base64());
  bmem = BIO_new_mem_buf(input, length);
  bmem = BIO_push(b64, bmem);
  BIO_set_flags(b64, BIO_FLAGS_BASE64_NO_NL);
  BIO_read(bmem, buffer, length);

  BIO_free_all(bmem);

  return buffer;
}

char *encode64(unsigned char *input, int length)
{
	BIO *bio, *b64;

 b64 = BIO_new(BIO_f_base64());

bio = BIO_new_fp(stdout, BIO_NOCLOSE);
BIO_push(b64, bio);
 BIO_write(b64, input, length);
 BIO_set_flags(b64, BIO_FLAGS_BASE64_NO_NL);
 BIO_flush(b64);

 BIO_free_all(b64);
}

char *encode(const unsigned char *input, int length)
{
	{
  BIO *bmem, *b64;
  BUF_MEM *bptr;

  b64 = BIO_new(BIO_f_base64());
  bmem = BIO_new(BIO_s_mem());
  b64 = BIO_push(b64, bmem);
  BIO_write(b64, input, length);
  BIO_flush(b64);
  BIO_get_mem_ptr(b64, &bptr);

  char *buff = malloc(bptr->length);
  memcpy(buff, bptr->data, bptr->length-1);
  buff[bptr->length] = 0;
  BIO_free_all(b64);
  return buff;
	}
}
int main(int argc, char *argv[])
{
	// BIO *bio, *b64;
	// char message[] = "Meet at 22:00 tomorrow at our secure location.  Come alone, and do not tell anyone - this meeting is sensitive, as leadership will be present.  To authenticate yourself, mention the pass code mi6e9bd2nq9liftsqvmf at the door.";
	// b64 = BIO_new(BIO_f_base64());
	// bio = BIO_new_fp(stdout, BIO_NOCLOSE);
	// BIO_push(b64, bio);
	// BIO_write(b64, message, strlen(message));
	// BIO_flush(b64);
	// BIO_free_all(b64);
	//char *az = NULL;
	//char input[] = "B1ltnj2XtXNtAKCw5GTS9RIvA1scdiczP1nfb2XW3bJ/mbrKdCSJw9YF7HnWVH9KVjludoEL7KM9\nF7b67bJ0shnH3yfGt9SIYgsahbySbTz4QWB5Nfs2xJ6izZ9Yu7v/9Z6DrofXkC3P+C0EsVsKCbSJ\nkrJyA4iWAqgLLtzYLBA=\n";
	 
	//char *buffer = decode64(input, strlen(input)+1);
	//printf("base64 decoded to %s\n", buffer);

	char msg[] = "Sir, Good news! We have developed a capability to encode secret messages to help with OPERATION olqoa3pamgdsayu8xjy3. We are ready for our final tasking. VR, Codebreaker 3473009";
	char *msgcpy = calloc(225, 1);
	memcpy(msgcpy, msg, strlen(msg));
	char digest[48] = "\x77\xb8\x88\xfe\xdb\x97\xa3\x01\x59\x9d\x36\xc5\x74\x79\xf3\x90\xa8\xf4\x1a\x07\xa0\x49\xc4\xde\x95\x5a\x27\x60\xb2\xed\x51\xf3\xff\x98\xbd\x74\x01\x48\xa4\x7a\xb1\xb7\xf7\x4e\xa4\x60\x33\xa5";
	// SHA512_CTX *c;
	// SHA384_Init(c);
	 	FILE *private = fopen("tier3_private.pem", "r");

	// SHA384_Update(c, msg, 225);
	// SHA384_Final(digest, c);
	// printf("Digest is %s\n", digest);


	RSA *r = PEM_read_RSAPrivateKey(private, NULL, NULL, NULL);
	char sigret[128] = {0};
	int siglen = 0;
	int success = RSA_sign(673, digest, 48, sigret, &siglen, r);
	printf("success was %d\n", success);
	//printf("Signature is %s, size is %d\n", sigret, siglen);
	// FILE *public = fopen("tier3_key.pem", "r");
	// RSA *p = PEM_read_RSAPublicKey(public, NULL, NULL, NULL);
	// printf("%d\n", RSA_verify(673, digest, 48, sigret, siglen, p));
	char *encoded = encode(sigret, siglen);
	char *decoded = decode64(encoded, strlen(encoded));
	printf("Decoded was \n%s\n", decoded);


	printf("\n");
	char hello[] = "Hello World";
	printf("Encoding and decoding %s\n", hello);
	char *helloencode = encode(hello, strlen(hello));
	char *hellodecode = decode64(helloencode, strlen(helloencode));
	printf("%s\n", hellodecode);
	return 0;
 }