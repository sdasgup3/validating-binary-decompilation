void leaf() {
  __asm__("cvttsd2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}