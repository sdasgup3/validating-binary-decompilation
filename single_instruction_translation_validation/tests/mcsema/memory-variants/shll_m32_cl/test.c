void leaf() {
  __asm__("shll %cl, -4(%rbp)");
  }

void main() {
  leaf();
}