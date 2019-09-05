void leaf() {
  __asm__("orq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}