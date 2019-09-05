void leaf() {
  __asm__("vcvtss2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}