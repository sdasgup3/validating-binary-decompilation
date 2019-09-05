void leaf() {
  __asm__("vcvtsd2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}