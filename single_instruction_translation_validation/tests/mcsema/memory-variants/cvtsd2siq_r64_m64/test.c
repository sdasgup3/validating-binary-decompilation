void leaf() {
  __asm__("cvtsd2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}