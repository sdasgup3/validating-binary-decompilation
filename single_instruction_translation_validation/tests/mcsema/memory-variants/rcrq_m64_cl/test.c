void leaf() {
  __asm__("rcrq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}