void leaf() {
  __asm__("pushw -4(%rbp)");
  }

void main() {
  leaf();
}