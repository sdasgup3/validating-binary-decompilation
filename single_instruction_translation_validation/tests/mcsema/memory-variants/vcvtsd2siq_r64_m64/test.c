void leaf() {
  __asm__("vcvtsd2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}