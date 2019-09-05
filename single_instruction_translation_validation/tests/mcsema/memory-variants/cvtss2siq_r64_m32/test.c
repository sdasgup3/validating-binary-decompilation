void leaf() {
  __asm__("cvtss2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}